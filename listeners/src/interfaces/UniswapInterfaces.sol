// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.2 < 0.9.0;

interface IUniswapV3Factory {
    function getPool(address tokenA, address tokenB, uint24 fee) external view returns (address pool);
}

interface IUniswapV3Pool {
    struct Slot0 {
        // the current price
        uint160 sqrtPriceX96;
        // the current tick
        int24 tick;
        // the most-recently updated index of the observations array
        uint16 observationIndex;
        // the current maximum number of observations that are being stored
        uint16 observationCardinality;
        // the next maximum number of observations to store, triggered in observations.write
        uint16 observationCardinalityNext;
        // the current protocol fee as a percentage of the swap fee taken on withdrawal
        // represented as an integer denominator (1/x)%
        uint8 feeProtocol;
        // whether the pool is locked
        bool unlocked;
    }

    // info stored for each initialized individual tick
    struct TickInfo {
        // the total position liquidity that references this tick
        uint128 liquidityGross;
        // amount of net liquidity added (subtracted) when tick is crossed from left to right (right to left),
        int128 liquidityNet;
        // fee growth per unit of liquidity on the _other_ side of this tick (relative to the current tick)
        // only has relative meaning, not absolute — the value depends on when the tick is initialized
        uint256 feeGrowthOutside0X128;
        uint256 feeGrowthOutside1X128;
        // the cumulative tick value on the other side of the tick
        int56 tickCumulativeOutside;
        // the seconds per unit of liquidity on the _other_ side of this tick (relative to the current tick)
        // only has relative meaning, not absolute — the value depends on when the tick is initialized
        uint160 secondsPerLiquidityOutsideX128;
        // the seconds spent on the other side of the tick (relative to the current tick)
        // only has relative meaning, not absolute — the value depends on when the tick is initialized
        uint32 secondsOutside;
        // true iff the tick is initialized, i.e. the value is exactly equivalent to the expression liquidityGross != 0
        // these 8 bits are set to prevent fresh sstores when crossing newly initialized ticks
        bool initialized;
    }

    struct PositionInfo {
        // the amount of liquidity owned by this position
        uint128 liquidity;
        // fee growth per unit of liquidity as of the last update to liquidity or fees owed
        uint256 feeGrowthInside0LastX128;
        uint256 feeGrowthInside1LastX128;
        // the fees owed to the position owner in token0/token1
        uint128 tokensOwed0;
        uint128 tokensOwed1;
    }

    function burn(int24 tickLower, int24 tickUpper, uint128 amount)
        external
        returns (uint256 amount0, uint256 amount1);
    function collect(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Requested,
        uint128 amount1Requested
    ) external returns (uint128 amount0, uint128 amount1);
    function collectProtocol(address recipient, uint128 amount0Requested, uint128 amount1Requested)
        external
        returns (uint128 amount0, uint128 amount1);
    function factory() external returns (address);
    function fee() external returns (uint24);
    function feeGrowthGlobal0X128() external returns (uint256);
    function feeGrowthGlobal1X128() external returns (uint256);
    function flash(address recipient, uint256 amount0, uint256 amount1, bytes memory data) external;
    function increaseObservationCardinalityNext(uint16 observationCardinalityNext) external;
    function initialize(uint160 sqrtPriceX96) external;
    function liquidity() external returns (uint128);
    function maxLiquidityPerTick() external returns (uint128);
    function mint(address recipient, int24 tickLower, int24 tickUpper, uint128 amount, bytes memory data)
        external
        returns (uint256 amount0, uint256 amount1);
    function observations(uint256)
        external
        returns (
            uint32 blockTimestamp,
            int56 tickCumulative,
            uint160 secondsPerLiquidityCumulativeX128,
            bool initialized
        );
    function observe(uint32[] memory secondsAgos)
        external
        returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s);
    function positions(bytes32) external returns (PositionInfo memory);
    function protocolFees() external returns (uint128 token0, uint128 token1);
    function setFeeProtocol(uint8 feeProtocol0, uint8 feeProtocol1) external;
    function slot0() external returns (Slot0 memory);
    function snapshotCumulativesInside(int24 tickLower, int24 tickUpper)
        external
        returns (int56 tickCumulativeInside, uint160 secondsPerLiquidityInsideX128, uint32 secondsInside);
    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes memory data
    ) external returns (int256 amount0, int256 amount1);
    function tickBitmap(int16) external returns (uint256);
    function tickSpacing() external returns (int24);
    function ticks(int24) external returns (TickInfo memory);
    function token0() external returns (address);
    function token1() external returns (address);
}

interface IUniswapV2Pair {
    function DOMAIN_SEPARATOR() external returns (bytes32);
    function MINIMUM_LIQUIDITY() external returns (uint256);
    function PERMIT_TYPEHASH() external returns (bytes32);
    function decimals() external returns (uint8);
    function factory() external returns (address);
    function getReserves() external returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
    function kLast() external returns (uint256);
    function name() external returns (string memory);
    function price0CumulativeLast() external returns (uint256);
    function price1CumulativeLast() external returns (uint256);
    function symbol() external returns (string memory);
    function token0() external returns (address);
    function token1() external returns (address);
    function totalSupply() external returns (uint256);
    function allowance(address, address) external returns (uint256);
    function balanceOf(address) external returns (uint256);
    function nonces(address) external returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    function burn(address to) external returns (uint256 amount0, uint256 amount1);
    function initialize(address _token0, address _token1) external;
    function mint(address to) external returns (uint256 liquidity);
    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external;
    function skim(address to) external;
    function swap(uint256 amount0Out, uint256 amount1Out, address to, bytes memory data) external;
    function sync() external;
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

interface IUniswapV2Factory {
    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint256) external view returns (address pair);
    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}
