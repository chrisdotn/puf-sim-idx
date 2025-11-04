import { eq, sql } from "drizzle-orm";
import { Context } from "hono";
import { tokenSwap } from "./db/schema/Listener"; // Adjust the import path as necessary
import { types, db, App, middlewares } from "@duneanalytics/sim-idx"; // Import schema to ensure it's registered

const app = App.create();
app.use("*", middlewares.authentication);

app.get("/", async (c) => {
  try {
    const client = db.client(c);

    const result = await client
      .select()
      .from(tokenSwap)
      .limit(50);

    return Response.json({
      result: result,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

app.get("/2h", async (c: Context<{
  Bindings: {
    DB_SCHEMA_NAME?: string;
  }
}>) => {
  try {
    const client = db.client(c);

    const DB_SCHEMA_NAME = c.env.DB_SCHEMA_NAME;
    // Validate and construct table identifier safely
    // Only allow alphanumeric and underscore for identifiers
    const validateIdentifier = (name: string): boolean => {
      return /^[a-zA-Z_][a-zA-Z0-9_]*$/.test(name);
    };
    
    const tableBase = "token_swap";
    if (!validateIdentifier(tableBase)) {
      throw new Error("Invalid table name");
    }
    
    // Construct table identifier using sql.identifier for proper escaping
    let tableIdentifier;
    if (DB_SCHEMA_NAME) {
      if (!validateIdentifier(DB_SCHEMA_NAME)) {
        throw new Error("Invalid schema name");
      }
      // Use sql.identifier for each part separately
      tableIdentifier = sql`${sql.identifier(DB_SCHEMA_NAME)}.${sql.identifier(tableBase)}`;
    } else {
      tableIdentifier = sql.identifier(tableBase);
    }

    const result = await client.execute(sql`
      select
        swapper,
        sum(case when is_buy is true then coalesce(usd_value, 0) else 0 end)/10e6 as buy_usd,
        sum(case when is_buy is false then coalesce(usd_value, 0) else 0 end)/1e6 as sell_usd,
        sum(usd_value)/1e6 as total_usd
      from ${tableIdentifier}
      where "timestamp" >= extract(epoch from now() - interval '120 minutes')
      group by swapper
      order by sum(usd_value) desc
    `);

    // Format swapper addresses from Buffer to hex string
    const formattedRows = result.rows.map((row: any) => ({
      ...row,
      swapper: row.swapper && Buffer.isBuffer(row.swapper) 
        ? '0x' + row.swapper.toString('hex')
        : row.swapper,
    }));

    return Response.json({
      result: formattedRows,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

export default app;
