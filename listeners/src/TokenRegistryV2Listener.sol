// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {Constants} from "./util/constants.sol";


import {IERC20} from "./interfaces/IERC20.sol";
import {IUniswapV3Pool} from "./interfaces/IUniswapV3Pool.sol";
import {Math} from "./util/Math.sol";
import {UniswapV3Pricing} from "./util/UniswapV3Pricing.sol";


/// Index calls to the UniswapV3Factory.createPool function on Ethereum
/// To hook on more function calls, specify that this listener should implement that interface and follow the compiler errors.
contract TokenRegistryV2Listener is
    TokenRegistryV2$OnTokenCreatedEvent,
    TokenRegistryV2$OnTokenBoughtEvent,
    TokenRegistryV2$OnTokenSoldEvent,
    TokenRegistryV2$OnCurvePhaseEndedEvent
{

    address constant WLD_USDC_POOL_ADDRESS = 0x610E319b3A3Ab56A0eD5562927D37c233774ba39;
    address constant WLD_ADDRESS = 0x2cFc85d8E48F8EAB294be644d9E25C3030863003;
    address constant USDC_ADDRESS = 0x79A02482A880bCE3F13e09Da970dC34db4CD24d1;

    /// @notice Parameters for the TokenSwap event
    struct TokenSwapParams {
        uint64 chainId;
        bytes32 transactionHash;
        uint64 logIndex;
        address tokenContract;
        bool isBuy;
        address swapper;
        uint256 receivedAmount;
        uint256 spentAmount;
        uint256 usdValue;
        bool userHasProPlan;
        string feeType;
        uint256 grossFee;
        uint256 equityFee;
        uint256 netFee;
        uint256 currentWldUsdPrice;
        address poolAddress;
        uint256 timestamp;
        uint256 block;
    }

    /// Emitted events are indexed.
    /// To change the data which is indexed, modify the event or add more events.
    event TokenCreated(
        uint64 chainId,
        address tokenContract,
        address creator,
        string name,
        string symbol,
        bool userHasProPlan,
        uint256 initialBuyAmountX
    );

    event TokenBought(
        uint64 chainId,
        address tokenContract,
        address buyer,
        uint256 paymentAmount,
        uint256 tokenAmount,
        bool userHasProPlan
    );

    event TokenSold(
        uint64 chainId,
        address tokenContract,
        address seller,
        uint256 tokenAmount,
        uint256 paymentAmount,
        bool userHasProPlan
    );

    event CurvePhaseEnded(
        uint64 chainId,
        address tokenContract,
        address poolAddress
    );

    event TokenSwap(TokenSwapParams);

    function onCurvePhaseEndedEvent(EventContext memory ctx, TokenRegistryV2$CurvePhaseEndedEventParams memory inputs) external override {
        emit CurvePhaseEnded(uint64(block.chainid), inputs.tokenContract, inputs.poolAddress);
    }

    function onTokenCreatedEvent(
        EventContext memory ctx,
        TokenRegistryV2$TokenCreatedEventParams memory inputs
    ) external override {
        emit TokenCreated(
            uint64(block.chainid),
            inputs.tokenContract,
            inputs.creator,
            inputs.name,
            inputs.symbol,
            inputs.userHasProPlan,
            inputs.initialBuyAmountX
        );
    }

    function onTokenBoughtEvent(EventContext memory ctx, TokenRegistryV2$TokenBoughtEventParams memory inputs) external override {
        emit TokenBought(uint64(block.chainid), inputs.tokenContract, inputs.buyer, inputs.paymentAmount, inputs.tokenAmount, inputs.userHasProPlan);

        // Calculate fees
        uint256 swapFee = inputs.userHasProPlan
            ? Constants.PRO_USER_BONDING_FEE_BPS
            : Constants.BONDING_SWAP_FEE_BPS;
        uint256 netPayment = inputs.paymentAmount;
        uint256 grossPayment = (netPayment * Constants.BASIS_POINTS) / (Constants.BASIS_POINTS - swapFee);
        uint256 feeAmount = grossPayment - netPayment;
        uint256 calculatedEquityFee = (feeAmount * Constants.EQUITY_FEE_BPS) / Constants.BASIS_POINTS;
        uint256 netFee = feeAmount - calculatedEquityFee;

        uint256 usdValue = UniswapV3Pricing.getValueInUsdc(inputs.tokenAmount);

        // also emit a TokenSwap
        TokenSwapParams memory swapParams = TokenSwapParams({
            chainId: uint64(block.chainid),
            transactionHash: ctx.txn.hash(),
            logIndex: ctx.logIndex(),
            tokenContract: inputs.tokenContract,
            isBuy: true,
            swapper: inputs.buyer,
            receivedAmount: inputs.tokenAmount,
            spentAmount: inputs.paymentAmount,
            usdValue: usdValue,
            userHasProPlan: inputs.userHasProPlan,
            feeType: "BONDING_BUY",
            grossFee: feeAmount,
            equityFee: calculatedEquityFee,
            netFee: netFee,
            currentWldUsdPrice: usdValue/(inputs.tokenAmount / 10 ** 18),
            poolAddress: address(0),
            timestamp: block.timestamp,
            block: blockNumber()
        });
        emit TokenSwap(swapParams);
    }

    function onTokenSoldEvent(EventContext memory ctx, TokenRegistryV2$TokenSoldEventParams memory inputs) external override {
        emit TokenSold(uint64(block.chainid), inputs.tokenContract, inputs.seller, inputs.tokenAmount, inputs.paymentAmount, inputs.userHasProPlan);

        bool sellerHasProPlan = false;

        // Calculate fees
        uint256 swapFee = sellerHasProPlan
            ? Constants.PRO_USER_BONDING_FEE_BPS
            : Constants.BONDING_SWAP_FEE_BPS;
        uint256 netPayment = inputs.paymentAmount;
        uint256 grossPayment = (netPayment * Constants.BASIS_POINTS) / (Constants.BASIS_POINTS - swapFee);
        uint256 feeAmount = grossPayment - netPayment;
        uint256 calculatedEquityFee = (feeAmount * Constants.EQUITY_FEE_BPS) / Constants.BASIS_POINTS;
        uint256 netFee = feeAmount - calculatedEquityFee;

        uint256 usdValue = UniswapV3Pricing.getValueInUsdc(inputs.paymentAmount);

        // also emit a TokenSwap
        TokenSwapParams memory swapParams = TokenSwapParams({
            chainId: uint64(block.chainid),
            transactionHash: ctx.txn.hash(),
            logIndex: ctx.logIndex(),
            tokenContract: inputs.tokenContract,
            isBuy: false,
            swapper: inputs.seller,
            receivedAmount: inputs.paymentAmount,
            spentAmount: inputs.tokenAmount,
            usdValue: usdValue,
            userHasProPlan: sellerHasProPlan,
            feeType: "BONDING_SELL",
            grossFee: feeAmount,
            equityFee: calculatedEquityFee,
            netFee: netFee,
            currentWldUsdPrice: usdValue/(inputs.paymentAmount / 10 ** 18),
            poolAddress: address(0),
            timestamp: block.timestamp,
            block: blockNumber()
        });
        emit TokenSwap(swapParams);
    }

}
