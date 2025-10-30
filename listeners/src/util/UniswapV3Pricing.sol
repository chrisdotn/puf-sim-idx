// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {IUniswapV3Pool} from "../interfaces/IUniswapV3Pool.sol";
import {Math} from "./Math.sol";

library UniswapV3Pricing {

    address constant WLD_USDC_POOL_ADDRESS = 0x610E319b3A3Ab56A0eD5562927D37c233774ba39;
    address constant WLD_ADDRESS = 0x2cFc85d8E48F8EAB294be644d9E25C3030863003;
    address constant USDC_ADDRESS = 0x79A02482A880bCE3F13e09Da970dC34db4CD24d1;

    function getValueInUsdc(uint256 amountWei) internal view returns (uint256 amountUsdc) {
        IUniswapV3Pool pool = IUniswapV3Pool(WLD_USDC_POOL_ADDRESS);
        
        (uint160 sqrtPriceX96,, , , , ,) = pool.slot0();
        uint256 priceX192 = uint256(sqrtPriceX96) * uint256(sqrtPriceX96); // Q192

        address t0 = pool.token0();
        address t1 = pool.token1();

        // Sanity: pool must be exactly WETH/USDC in either order
        require(
            (t0 == WLD_ADDRESS && t1 == USDC_ADDRESS) || (t0 == USDC_ADDRESS && t1 == WLD_ADDRESS),
            "Unexpected pool tokens"
        );

        // Compute USDC (6 decimals) output for the given WLD wei input.
        // NOTE: Uniswap v3 price math already uses raw token units, so no extra
        // decimal scaling is needed beyond the Q192 divide/inverse.
        if (t0 == WLD_ADDRESS) {
            // price is USDC per WLD in Q192
            amountUsdc = Math.mulDiv(amountWei, priceX192, 1 << 192);
        } else {
            // price is WLD per USDC in Q192 => invert
            // amountUSDC = amountWei / (WLD per USDC)
            //           = amountWei * 2^192 / priceX192
            amountUsdc = Math.mulDiv(amountWei, 1 << 192, priceX192);
        }
    }
}