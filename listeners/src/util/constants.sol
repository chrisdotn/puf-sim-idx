// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

library Constants {
    uint256 public constant BASIS_POINTS = 10000;
    uint256 public constant TOKEN_CREATION_FEE = 2 * 10**18;
    uint256 public constant PRO_TOKEN_CREATION_FEE = 1 * 10**18;

    uint256 public constant BONDING_SWAP_FEE_BPS = 200;
    uint256 public constant UNISWAP_SWAP_FEE_BPS = 100;
    uint256 public constant UNAUTHORIZED_FEE_BPS = 200;
    uint256 public constant AUTHORIZED_FEE_BPS = 100;
    uint256 public constant PRO_USER_BONDING_FEE_BPS = 100;
    uint256 public constant PRO_USER_UNISWAP_FEE_BPS = 50;
    uint256 public constant EQUITY_FEE_BPS = 1500;

    uint8 public constant USD_DECIMAL_PLACES = 6;

    address public constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    uint256 public constant TOTAL_SUPPLY = 100 * 10**6 * 10**18;

    string public constant WLD_USD_PRICE_KEY = "wldUsdPrice";
}
