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
  const DB_SCHEMA_NAME = c.env.DB_SCHEMA_NAME;
  const tableName = (basename: string) => {
    // Escape identifiers to prevent SQL injection
    const escapeIdentifier = (name: string) => `"${name.replace(/"/g, '""')}"`;
    if (DB_SCHEMA_NAME) {
      return `${escapeIdentifier(DB_SCHEMA_NAME)}.${escapeIdentifier(basename)}`;
    }
    return escapeIdentifier(basename);
  };

  try {
     const result = await db.client(c).execute(sql`
      select
        swapper,
        sum(case when is_buy is true then coalesce(usd_value, 0) else 0 end)/10e6 as buy_usd,
        sum(case when is_buy is false then coalesce(usd_value, 0) else 0 end)/1e6 as sell_usd,
        sum(usd_value)/1e6 as total_usd
      from ${sql.raw(tableName("token_swap"))}
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
