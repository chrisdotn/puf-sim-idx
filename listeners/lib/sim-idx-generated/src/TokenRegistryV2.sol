// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function TokenRegistryV2$Abi() pure returns (Abi memory) {
    return Abi("TokenRegistryV2");
}
struct TokenRegistryV2$AuthorizedFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$BasisPointFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$BondingSwapFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$CreatorFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$EquityFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$InitialVirtualXFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$InitialVirtualYFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$Permit2FunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$ProUserBondingFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$ProUserUniswapFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$PufContractFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$PufFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$RaiseGoalFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$UnauthorizedFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$UniswapSwapFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$AuthenticatedUserLevelFunctionInputs {
    address outArg0;
}

struct TokenRegistryV2$AuthenticatedUserLevelFunctionOutputs {
    uint8 outArg0;
}

struct TokenRegistryV2$BurnAddressFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$BuyTokensBondingP2FunctionInputs {
    address tokenContract;
    uint256 amount;
    uint256 minTokensOut;
    uint256 permitNonce;
    uint256 permitDeadline;
    bytes permitSignature;
}

struct TokenRegistryV2$CalculateRemainingSupplyFunctionInputs {
    address tokenContract;
}

struct TokenRegistryV2$CalculateRemainingSupplyFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$CalculateSellReturnFunctionInputs {
    uint256 xVirtualReserve;
    uint256 yVirtualReserve;
    uint256 tokenAmount;
}

struct TokenRegistryV2$CalculateSellReturnFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$CalculateTokenAmountFunctionInputs {
    address tokenContract;
    uint256 xVirtualReserve;
    uint256 yVirtualReserve;
    uint256 paymentAmount;
}

struct TokenRegistryV2$CalculateTokenAmountFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$CalculateTotalRaisedFunctionInputs {
    uint256 xVirtualReserve;
}

struct TokenRegistryV2$CalculateTotalRaisedFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$CalculateTotalTokensSoldFunctionInputs {
    address tokenContract;
}

struct TokenRegistryV2$CalculateTotalTokensSoldFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$CheckPriceOfTokenFunctionInputs {
    address tokenContract;
}

struct TokenRegistryV2$CheckPriceOfTokenFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$CheckProUserFunctionInputs {
    address user;
}

struct TokenRegistryV2$CheckProUserFunctionOutputs {
    bool outArg0;
}

struct TokenRegistryV2$CreateTokenP2FunctionInputs {
    string name;
    string symbol;
    string imgURL;
    string description;
    string xURL;
    uint256 initialBuyAmount;
    string referral;
    uint256 permitNonce;
    uint256 permitDeadline;
    bytes permitSignature;
}

struct TokenRegistryV2$CreateTokenP2FunctionOutputs {
    address tokenContract;
}

struct TokenRegistryV2$CreatorTokensFunctionInputs {
    address outArg0;
    uint256 outArg1;
}

struct TokenRegistryV2$CreatorTokensFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$DevBuyFunctionInputs {
    address tokenContract;
    uint256 amount;
}

struct TokenRegistryV2$FeeWalletFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$GetCreatorTokensFunctionInputs {
    address creator;
}

struct TokenRegistryV2$GetCreatorTokensFunctionOutputs {
    address[] outArg0;
}

struct TokenRegistryV2$GetMarketcapOfTokenFunctionInputs {
    address tokenContract;
}

struct TokenRegistryV2$GetMarketcapOfTokenFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$GetPoolAddressOfTokenFunctionInputs {
    address tokenContract;
}

struct TokenRegistryV2$GetPoolAddressOfTokenFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$GetTokenCreatorAndCreationDateFunctionInputs {
    address tokenContract;
}

struct TokenRegistryV2$GetTokenCreatorAndCreationDateFunctionOutputs {
    address outArg0;
    uint256 outArg1;
}

struct TokenRegistryV2$InitializeFunctionInputs {
    address _paymentToken;
    address _TokenImplementation;
    address _feeWallet;
    address _PUFContract;
    address _signerWallet;
}

struct TokenRegistryV2$InvestorFeeContractFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$IsSubscriptionModeEnabledFunctionOutputs {
    bool outArg0;
}

struct TokenRegistryV2$MaxInitialBuyAmountFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$OwnerFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$PaymentTokenFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$ReferralOfTokenFunctionInputs {
    address outArg0;
}

struct TokenRegistryV2$ReferralOfTokenFunctionOutputs {
    string outArg0;
}

struct TokenRegistryV2$SellTokensBondingP2FunctionInputs {
    address tokenContract;
    uint256 tokenAmount;
    uint256 minPaymentOut;
    uint256 permitNonce;
    uint256 permitDeadline;
    bytes permitSignature;
}

struct TokenRegistryV2$SetAuthenticatedUserLevelFunctionInputs {
    address user;
    uint8 level;
}

struct TokenRegistryV2$SetFeesFunctionInputs {
    uint256 _BONDING_SWAP_FEE;
    uint256 _UNISWAP_SWAP_FEE;
    uint256 _UNAUTHORIZED_FEE;
    uint256 _AUTHORIZED_FEE;
    uint256 _PRO_USER_BONDING_FEE;
    uint256 _PRO_USER_UNISWAP_FEE;
    uint256 _PUF_FEE;
    uint256 _CREATOR_FEE;
}

struct TokenRegistryV2$SetMaxInitialBuyAmountFunctionInputs {
    uint256 _maxInitialBuyAmount;
}

struct TokenRegistryV2$SetPufContractFunctionInputs {
    address _PUFContract;
}

struct TokenRegistryV2$SetPaymentTokenFunctionInputs {
    address _paymentToken;
}

struct TokenRegistryV2$SetTokenImplementationFunctionInputs {
    address _tokenImplementation;
}

struct TokenRegistryV2$SignerWalletFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$SubscriptionContractFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$TokenCreationFeeFunctionOutputs {
    uint256 outArg0;
}

struct TokenRegistryV2$TokenImplementationFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$TokensFunctionInputs {
    address outArg0;
}

struct TokenRegistryV2$TokensFunctionOutputs {
    address creator;
    string name;
    string symbol;
    string IMGURL;
    string description;
    string xURL;
    uint256 creationDate;
    uint8 phase;
    address poolAddress;
    uint256 totalLiquidity;
    uint256 xVirtualReserve;
    uint256 yVirtualReserve;
}

struct TokenRegistryV2$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct TokenRegistryV2$TransferTokenP2FunctionInputs {
    address to;
    uint256 value;
    address tokenAddress;
    uint256 permitNonce;
    uint256 permitDeadline;
    bytes permitSignature;
}

struct TokenRegistryV2$UniswapFactoryFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$UniswapRouterFunctionOutputs {
    address outArg0;
}

struct TokenRegistryV2$UniswapSwapP2FunctionInputs {
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    uint256 amountOutMin;
    uint256 permitNonce;
    uint256 permitDeadline;
    bytes permitSignature;
}

struct TokenRegistryV2$UsedNoncesFunctionInputs {
    uint256 outArg0;
}

struct TokenRegistryV2$UsedNoncesFunctionOutputs {
    bool outArg0;
}

struct TokenRegistryV2$VerifyUserFunctionInputs {
    uint8 level;
    bytes signature;
    uint256 nonce;
}

struct TokenRegistryV2$CreatorFeePaidEventParams {
    address tokenContract;
    address creator;
    uint256 amount;
}

struct TokenRegistryV2$CurvePhaseEndedEventParams {
    address tokenContract;
    address poolAddress;
}

struct TokenRegistryV2$InitializedEventParams {
    uint64 version;
}

struct TokenRegistryV2$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct TokenRegistryV2$PoolAddressSetEventParams {
    address tokenContract;
    address poolAddress;
}

struct TokenRegistryV2$TokenBoughtEventParams {
    address tokenContract;
    address buyer;
    uint256 paymentAmount;
    uint256 tokenAmount;
    bool userHasProPlan;
}

struct TokenRegistryV2$TokenCreatedEventParams {
    address tokenContract;
    address creator;
    string name;
    string symbol;
    bool userHasProPlan;
    uint256 initialBuyAmountX;
}

struct TokenRegistryV2$TokenPriceChangedEventParams {
    address tokenContract;
    uint256 newPrice;
    uint256 timestamp;
}

struct TokenRegistryV2$TokenSoldEventParams {
    address tokenContract;
    address seller;
    uint256 tokenAmount;
    uint256 paymentAmount;
    bool userHasProPlan;
}

abstract contract TokenRegistryV2$OnCreatorFeePaidEvent {
    function onCreatorFeePaidEvent(EventContext memory ctx, TokenRegistryV2$CreatorFeePaidEventParams memory inputs) virtual external;

    function triggerOnCreatorFeePaidEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0x37f367d4b24fa07d94199e5a6182293a8ae4d3b3986782251a6a467a04b6788a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorFeePaidEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCurvePhaseEndedEvent {
    function onCurvePhaseEndedEvent(EventContext memory ctx, TokenRegistryV2$CurvePhaseEndedEventParams memory inputs) virtual external;

    function triggerOnCurvePhaseEndedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0x37b5a4aa7cb2f625f5cb147725c0869408be66f877736e23f249adc275aca629),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCurvePhaseEndedEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnInitializedEvent {
    function onInitializedEvent(EventContext memory ctx, TokenRegistryV2$InitializedEventParams memory inputs) virtual external;

    function triggerOnInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0xc7f505b2f371ae2175ee4913f4499e1f2633a7b5936321eed1cdaeb6115181d2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializedEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnOwnershipTransferredEvent {
    function onOwnershipTransferredEvent(EventContext memory ctx, TokenRegistryV2$OwnershipTransferredEventParams memory inputs) virtual external;

    function triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnPoolAddressSetEvent {
    function onPoolAddressSetEvent(EventContext memory ctx, TokenRegistryV2$PoolAddressSetEventParams memory inputs) virtual external;

    function triggerOnPoolAddressSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0x64e58041c8159a46545324df1509fadc494d61f753f1bc101bd93c2ef85db093),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPoolAddressSetEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTokenBoughtEvent {
    function onTokenBoughtEvent(EventContext memory ctx, TokenRegistryV2$TokenBoughtEventParams memory inputs) virtual external;

    function triggerOnTokenBoughtEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0x3c98d9eb5980291ad337a1200ad0a7e7fb6f5a8e33cce019a64b83b8f6afc15c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokenBoughtEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTokenCreatedEvent {
    function onTokenCreatedEvent(EventContext memory ctx, TokenRegistryV2$TokenCreatedEventParams memory inputs) virtual external;

    function triggerOnTokenCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0x8a6ffd04e1cc506ca5de6b88b4dd8a98d65ed3475bfdd6b5850f43ae1bb88fd2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokenCreatedEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTokenPriceChangedEvent {
    function onTokenPriceChangedEvent(EventContext memory ctx, TokenRegistryV2$TokenPriceChangedEventParams memory inputs) virtual external;

    function triggerOnTokenPriceChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0x73dd84a04ccce6980e8996a09339cde4353e22fa20400d4e32326412a3667a49),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokenPriceChangedEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTokenSoldEvent {
    function onTokenSoldEvent(EventContext memory ctx, TokenRegistryV2$TokenSoldEventParams memory inputs) virtual external;

    function triggerOnTokenSoldEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes32(0x3d36cdbf0806ebbc9616a60bac7ba21a965259293985cf2f3adcc0f9cd49f69f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokenSoldEvent.selector
        });
    }
}

abstract contract TokenRegistryV2$OnAuthorizedFeeFunction {
    function onAuthorizedFeeFunction(FunctionContext memory ctx, TokenRegistryV2$AuthorizedFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnAuthorizedFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x752e249f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAuthorizedFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreAuthorizedFeeFunction {
    function preAuthorizedFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreAuthorizedFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x752e249f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAuthorizedFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnBasisPointFunction {
    function onBasisPointFunction(FunctionContext memory ctx, TokenRegistryV2$BasisPointFunctionOutputs memory outputs) virtual external;

    function triggerOnBasisPointFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xada5f642),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBasisPointFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreBasisPointFunction {
    function preBasisPointFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreBasisPointFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xada5f642),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBasisPointFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnBondingSwapFeeFunction {
    function onBondingSwapFeeFunction(FunctionContext memory ctx, TokenRegistryV2$BondingSwapFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnBondingSwapFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xc67e680e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBondingSwapFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreBondingSwapFeeFunction {
    function preBondingSwapFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreBondingSwapFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xc67e680e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBondingSwapFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCreatorFeeFunction {
    function onCreatorFeeFunction(FunctionContext memory ctx, TokenRegistryV2$CreatorFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatorFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x1a7dfa9f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCreatorFeeFunction {
    function preCreatorFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCreatorFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x1a7dfa9f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreatorFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnEquityFeeFunction {
    function onEquityFeeFunction(FunctionContext memory ctx, TokenRegistryV2$EquityFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnEquityFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xee10847b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEquityFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreEquityFeeFunction {
    function preEquityFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEquityFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xee10847b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEquityFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnInitialVirtualXFunction {
    function onInitialVirtualXFunction(FunctionContext memory ctx, TokenRegistryV2$InitialVirtualXFunctionOutputs memory outputs) virtual external;

    function triggerOnInitialVirtualXFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xc46dfa31),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitialVirtualXFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreInitialVirtualXFunction {
    function preInitialVirtualXFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInitialVirtualXFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xc46dfa31),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitialVirtualXFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnInitialVirtualYFunction {
    function onInitialVirtualYFunction(FunctionContext memory ctx, TokenRegistryV2$InitialVirtualYFunctionOutputs memory outputs) virtual external;

    function triggerOnInitialVirtualYFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xe82f6def),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitialVirtualYFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreInitialVirtualYFunction {
    function preInitialVirtualYFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInitialVirtualYFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xe82f6def),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitialVirtualYFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnPermit2Function {
    function onPermit2Function(FunctionContext memory ctx, TokenRegistryV2$Permit2FunctionOutputs memory outputs) virtual external;

    function triggerOnPermit2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x6afdd850),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPermit2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$PrePermit2Function {
    function prePermit2Function(PreFunctionContext memory ctx) virtual external;

    function triggerPrePermit2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x6afdd850),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePermit2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$OnProUserBondingFeeFunction {
    function onProUserBondingFeeFunction(FunctionContext memory ctx, TokenRegistryV2$ProUserBondingFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnProUserBondingFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x68d876be),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProUserBondingFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreProUserBondingFeeFunction {
    function preProUserBondingFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProUserBondingFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x68d876be),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProUserBondingFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnProUserUniswapFeeFunction {
    function onProUserUniswapFeeFunction(FunctionContext memory ctx, TokenRegistryV2$ProUserUniswapFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnProUserUniswapFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xab028b5d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProUserUniswapFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreProUserUniswapFeeFunction {
    function preProUserUniswapFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProUserUniswapFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xab028b5d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProUserUniswapFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnPufContractFunction {
    function onPufContractFunction(FunctionContext memory ctx, TokenRegistryV2$PufContractFunctionOutputs memory outputs) virtual external;

    function triggerOnPufContractFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x23ae655f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPufContractFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PrePufContractFunction {
    function prePufContractFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePufContractFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x23ae655f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePufContractFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnPufFeeFunction {
    function onPufFeeFunction(FunctionContext memory ctx, TokenRegistryV2$PufFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnPufFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x9c4f554d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPufFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PrePufFeeFunction {
    function prePufFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePufFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x9c4f554d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePufFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnRaiseGoalFunction {
    function onRaiseGoalFunction(FunctionContext memory ctx, TokenRegistryV2$RaiseGoalFunctionOutputs memory outputs) virtual external;

    function triggerOnRaiseGoalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x2d6404e2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRaiseGoalFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreRaiseGoalFunction {
    function preRaiseGoalFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRaiseGoalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x2d6404e2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRaiseGoalFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnUnauthorizedFeeFunction {
    function onUnauthorizedFeeFunction(FunctionContext memory ctx, TokenRegistryV2$UnauthorizedFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnUnauthorizedFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xc0909fce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnauthorizedFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreUnauthorizedFeeFunction {
    function preUnauthorizedFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUnauthorizedFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xc0909fce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUnauthorizedFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnUniswapSwapFeeFunction {
    function onUniswapSwapFeeFunction(FunctionContext memory ctx, TokenRegistryV2$UniswapSwapFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnUniswapSwapFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x628d90b8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUniswapSwapFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreUniswapSwapFeeFunction {
    function preUniswapSwapFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUniswapSwapFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x628d90b8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUniswapSwapFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnAuthenticatedUserLevelFunction {
    function onAuthenticatedUserLevelFunction(FunctionContext memory ctx, TokenRegistryV2$AuthenticatedUserLevelFunctionInputs memory inputs, TokenRegistryV2$AuthenticatedUserLevelFunctionOutputs memory outputs) virtual external;

    function triggerOnAuthenticatedUserLevelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xa4ba808e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAuthenticatedUserLevelFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreAuthenticatedUserLevelFunction {
    function preAuthenticatedUserLevelFunction(PreFunctionContext memory ctx, TokenRegistryV2$AuthenticatedUserLevelFunctionInputs memory inputs) virtual external;

    function triggerPreAuthenticatedUserLevelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xa4ba808e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAuthenticatedUserLevelFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnBurnAddressFunction {
    function onBurnAddressFunction(FunctionContext memory ctx, TokenRegistryV2$BurnAddressFunctionOutputs memory outputs) virtual external;

    function triggerOnBurnAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x70d5ae05),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBurnAddressFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreBurnAddressFunction {
    function preBurnAddressFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreBurnAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x70d5ae05),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBurnAddressFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnBuyTokensBondingP2Function {
    function onBuyTokensBondingP2Function(FunctionContext memory ctx, TokenRegistryV2$BuyTokensBondingP2FunctionInputs memory inputs) virtual external;

    function triggerOnBuyTokensBondingP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xaa216cb0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBuyTokensBondingP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$PreBuyTokensBondingP2Function {
    function preBuyTokensBondingP2Function(PreFunctionContext memory ctx, TokenRegistryV2$BuyTokensBondingP2FunctionInputs memory inputs) virtual external;

    function triggerPreBuyTokensBondingP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xaa216cb0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBuyTokensBondingP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCalculateRemainingSupplyFunction {
    function onCalculateRemainingSupplyFunction(FunctionContext memory ctx, TokenRegistryV2$CalculateRemainingSupplyFunctionInputs memory inputs, TokenRegistryV2$CalculateRemainingSupplyFunctionOutputs memory outputs) virtual external;

    function triggerOnCalculateRemainingSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x32e2755e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCalculateRemainingSupplyFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCalculateRemainingSupplyFunction {
    function preCalculateRemainingSupplyFunction(PreFunctionContext memory ctx, TokenRegistryV2$CalculateRemainingSupplyFunctionInputs memory inputs) virtual external;

    function triggerPreCalculateRemainingSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x32e2755e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCalculateRemainingSupplyFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCalculateSellReturnFunction {
    function onCalculateSellReturnFunction(FunctionContext memory ctx, TokenRegistryV2$CalculateSellReturnFunctionInputs memory inputs, TokenRegistryV2$CalculateSellReturnFunctionOutputs memory outputs) virtual external;

    function triggerOnCalculateSellReturnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x84ffb09f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCalculateSellReturnFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCalculateSellReturnFunction {
    function preCalculateSellReturnFunction(PreFunctionContext memory ctx, TokenRegistryV2$CalculateSellReturnFunctionInputs memory inputs) virtual external;

    function triggerPreCalculateSellReturnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x84ffb09f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCalculateSellReturnFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCalculateTokenAmountFunction {
    function onCalculateTokenAmountFunction(FunctionContext memory ctx, TokenRegistryV2$CalculateTokenAmountFunctionInputs memory inputs, TokenRegistryV2$CalculateTokenAmountFunctionOutputs memory outputs) virtual external;

    function triggerOnCalculateTokenAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xdf17f58f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCalculateTokenAmountFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCalculateTokenAmountFunction {
    function preCalculateTokenAmountFunction(PreFunctionContext memory ctx, TokenRegistryV2$CalculateTokenAmountFunctionInputs memory inputs) virtual external;

    function triggerPreCalculateTokenAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xdf17f58f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCalculateTokenAmountFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCalculateTotalRaisedFunction {
    function onCalculateTotalRaisedFunction(FunctionContext memory ctx, TokenRegistryV2$CalculateTotalRaisedFunctionInputs memory inputs, TokenRegistryV2$CalculateTotalRaisedFunctionOutputs memory outputs) virtual external;

    function triggerOnCalculateTotalRaisedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xc5dec141),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCalculateTotalRaisedFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCalculateTotalRaisedFunction {
    function preCalculateTotalRaisedFunction(PreFunctionContext memory ctx, TokenRegistryV2$CalculateTotalRaisedFunctionInputs memory inputs) virtual external;

    function triggerPreCalculateTotalRaisedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xc5dec141),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCalculateTotalRaisedFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCalculateTotalTokensSoldFunction {
    function onCalculateTotalTokensSoldFunction(FunctionContext memory ctx, TokenRegistryV2$CalculateTotalTokensSoldFunctionInputs memory inputs, TokenRegistryV2$CalculateTotalTokensSoldFunctionOutputs memory outputs) virtual external;

    function triggerOnCalculateTotalTokensSoldFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x63657d4d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCalculateTotalTokensSoldFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCalculateTotalTokensSoldFunction {
    function preCalculateTotalTokensSoldFunction(PreFunctionContext memory ctx, TokenRegistryV2$CalculateTotalTokensSoldFunctionInputs memory inputs) virtual external;

    function triggerPreCalculateTotalTokensSoldFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x63657d4d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCalculateTotalTokensSoldFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCheckPriceOfTokenFunction {
    function onCheckPriceOfTokenFunction(FunctionContext memory ctx, TokenRegistryV2$CheckPriceOfTokenFunctionInputs memory inputs, TokenRegistryV2$CheckPriceOfTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckPriceOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x0949840a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckPriceOfTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCheckPriceOfTokenFunction {
    function preCheckPriceOfTokenFunction(PreFunctionContext memory ctx, TokenRegistryV2$CheckPriceOfTokenFunctionInputs memory inputs) virtual external;

    function triggerPreCheckPriceOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x0949840a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckPriceOfTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCheckProUserFunction {
    function onCheckProUserFunction(FunctionContext memory ctx, TokenRegistryV2$CheckProUserFunctionInputs memory inputs, TokenRegistryV2$CheckProUserFunctionOutputs memory outputs) virtual external;

    function triggerOnCheckProUserFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xe3bb5742),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCheckProUserFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCheckProUserFunction {
    function preCheckProUserFunction(PreFunctionContext memory ctx, TokenRegistryV2$CheckProUserFunctionInputs memory inputs) virtual external;

    function triggerPreCheckProUserFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xe3bb5742),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCheckProUserFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCreateTokenP2Function {
    function onCreateTokenP2Function(FunctionContext memory ctx, TokenRegistryV2$CreateTokenP2FunctionInputs memory inputs, TokenRegistryV2$CreateTokenP2FunctionOutputs memory outputs) virtual external;

    function triggerOnCreateTokenP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x51f5ec5d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreateTokenP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCreateTokenP2Function {
    function preCreateTokenP2Function(PreFunctionContext memory ctx, TokenRegistryV2$CreateTokenP2FunctionInputs memory inputs) virtual external;

    function triggerPreCreateTokenP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x51f5ec5d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreateTokenP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$OnCreatorTokensFunction {
    function onCreatorTokensFunction(FunctionContext memory ctx, TokenRegistryV2$CreatorTokensFunctionInputs memory inputs, TokenRegistryV2$CreatorTokensFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatorTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xdb3fa4cc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorTokensFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreCreatorTokensFunction {
    function preCreatorTokensFunction(PreFunctionContext memory ctx, TokenRegistryV2$CreatorTokensFunctionInputs memory inputs) virtual external;

    function triggerPreCreatorTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xdb3fa4cc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreatorTokensFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnDevBuyFunction {
    function onDevBuyFunction(FunctionContext memory ctx, TokenRegistryV2$DevBuyFunctionInputs memory inputs) virtual external;

    function triggerOnDevBuyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x83cc7e3f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDevBuyFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreDevBuyFunction {
    function preDevBuyFunction(PreFunctionContext memory ctx, TokenRegistryV2$DevBuyFunctionInputs memory inputs) virtual external;

    function triggerPreDevBuyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x83cc7e3f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDevBuyFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnFeeWalletFunction {
    function onFeeWalletFunction(FunctionContext memory ctx, TokenRegistryV2$FeeWalletFunctionOutputs memory outputs) virtual external;

    function triggerOnFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xf25f4b56),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFeeWalletFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreFeeWalletFunction {
    function preFeeWalletFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFeeWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xf25f4b56),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFeeWalletFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnGetCreatorTokensFunction {
    function onGetCreatorTokensFunction(FunctionContext memory ctx, TokenRegistryV2$GetCreatorTokensFunctionInputs memory inputs, TokenRegistryV2$GetCreatorTokensFunctionOutputs memory outputs) virtual external;

    function triggerOnGetCreatorTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x74abfa54),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetCreatorTokensFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreGetCreatorTokensFunction {
    function preGetCreatorTokensFunction(PreFunctionContext memory ctx, TokenRegistryV2$GetCreatorTokensFunctionInputs memory inputs) virtual external;

    function triggerPreGetCreatorTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x74abfa54),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetCreatorTokensFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnGetMarketcapOfTokenFunction {
    function onGetMarketcapOfTokenFunction(FunctionContext memory ctx, TokenRegistryV2$GetMarketcapOfTokenFunctionInputs memory inputs, TokenRegistryV2$GetMarketcapOfTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnGetMarketcapOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xdf8a4b71),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetMarketcapOfTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreGetMarketcapOfTokenFunction {
    function preGetMarketcapOfTokenFunction(PreFunctionContext memory ctx, TokenRegistryV2$GetMarketcapOfTokenFunctionInputs memory inputs) virtual external;

    function triggerPreGetMarketcapOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xdf8a4b71),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetMarketcapOfTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnGetPoolAddressOfTokenFunction {
    function onGetPoolAddressOfTokenFunction(FunctionContext memory ctx, TokenRegistryV2$GetPoolAddressOfTokenFunctionInputs memory inputs, TokenRegistryV2$GetPoolAddressOfTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnGetPoolAddressOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xbfe9359c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetPoolAddressOfTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreGetPoolAddressOfTokenFunction {
    function preGetPoolAddressOfTokenFunction(PreFunctionContext memory ctx, TokenRegistryV2$GetPoolAddressOfTokenFunctionInputs memory inputs) virtual external;

    function triggerPreGetPoolAddressOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xbfe9359c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetPoolAddressOfTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnGetTokenCreatorAndCreationDateFunction {
    function onGetTokenCreatorAndCreationDateFunction(FunctionContext memory ctx, TokenRegistryV2$GetTokenCreatorAndCreationDateFunctionInputs memory inputs, TokenRegistryV2$GetTokenCreatorAndCreationDateFunctionOutputs memory outputs) virtual external;

    function triggerOnGetTokenCreatorAndCreationDateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x56438e66),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetTokenCreatorAndCreationDateFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreGetTokenCreatorAndCreationDateFunction {
    function preGetTokenCreatorAndCreationDateFunction(PreFunctionContext memory ctx, TokenRegistryV2$GetTokenCreatorAndCreationDateFunctionInputs memory inputs) virtual external;

    function triggerPreGetTokenCreatorAndCreationDateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x56438e66),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetTokenCreatorAndCreationDateFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, TokenRegistryV2$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x1459457a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, TokenRegistryV2$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x1459457a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnInvestorFeeContractFunction {
    function onInvestorFeeContractFunction(FunctionContext memory ctx, TokenRegistryV2$InvestorFeeContractFunctionOutputs memory outputs) virtual external;

    function triggerOnInvestorFeeContractFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x5303ac5c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInvestorFeeContractFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreInvestorFeeContractFunction {
    function preInvestorFeeContractFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInvestorFeeContractFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x5303ac5c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInvestorFeeContractFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnIsSubscriptionModeEnabledFunction {
    function onIsSubscriptionModeEnabledFunction(FunctionContext memory ctx, TokenRegistryV2$IsSubscriptionModeEnabledFunctionOutputs memory outputs) virtual external;

    function triggerOnIsSubscriptionModeEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x3f37474e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onIsSubscriptionModeEnabledFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreIsSubscriptionModeEnabledFunction {
    function preIsSubscriptionModeEnabledFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreIsSubscriptionModeEnabledFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x3f37474e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preIsSubscriptionModeEnabledFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnMaxInitialBuyAmountFunction {
    function onMaxInitialBuyAmountFunction(FunctionContext memory ctx, TokenRegistryV2$MaxInitialBuyAmountFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxInitialBuyAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xff1a98da),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxInitialBuyAmountFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreMaxInitialBuyAmountFunction {
    function preMaxInitialBuyAmountFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxInitialBuyAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xff1a98da),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxInitialBuyAmountFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnOwnerFunction {
    function onOwnerFunction(FunctionContext memory ctx, TokenRegistryV2$OwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnerFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreOwnerFunction {
    function preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOwnerFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnPaymentTokenFunction {
    function onPaymentTokenFunction(FunctionContext memory ctx, TokenRegistryV2$PaymentTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnPaymentTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x3013ce29),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPaymentTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PrePaymentTokenFunction {
    function prePaymentTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePaymentTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x3013ce29),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePaymentTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnReferralOfTokenFunction {
    function onReferralOfTokenFunction(FunctionContext memory ctx, TokenRegistryV2$ReferralOfTokenFunctionInputs memory inputs, TokenRegistryV2$ReferralOfTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnReferralOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x7ddfbac7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onReferralOfTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreReferralOfTokenFunction {
    function preReferralOfTokenFunction(PreFunctionContext memory ctx, TokenRegistryV2$ReferralOfTokenFunctionInputs memory inputs) virtual external;

    function triggerPreReferralOfTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x7ddfbac7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preReferralOfTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnRenounceOwnershipFunction {
    function onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreRenounceOwnershipFunction {
    function preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSellTokensBondingP2Function {
    function onSellTokensBondingP2Function(FunctionContext memory ctx, TokenRegistryV2$SellTokensBondingP2FunctionInputs memory inputs) virtual external;

    function triggerOnSellTokensBondingP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x301c2a25),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSellTokensBondingP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSellTokensBondingP2Function {
    function preSellTokensBondingP2Function(PreFunctionContext memory ctx, TokenRegistryV2$SellTokensBondingP2FunctionInputs memory inputs) virtual external;

    function triggerPreSellTokensBondingP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x301c2a25),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSellTokensBondingP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSetAuthenticatedUserLevelFunction {
    function onSetAuthenticatedUserLevelFunction(FunctionContext memory ctx, TokenRegistryV2$SetAuthenticatedUserLevelFunctionInputs memory inputs) virtual external;

    function triggerOnSetAuthenticatedUserLevelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xeaf8fa72),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetAuthenticatedUserLevelFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSetAuthenticatedUserLevelFunction {
    function preSetAuthenticatedUserLevelFunction(PreFunctionContext memory ctx, TokenRegistryV2$SetAuthenticatedUserLevelFunctionInputs memory inputs) virtual external;

    function triggerPreSetAuthenticatedUserLevelFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xeaf8fa72),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetAuthenticatedUserLevelFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSetFeesFunction {
    function onSetFeesFunction(FunctionContext memory ctx, TokenRegistryV2$SetFeesFunctionInputs memory inputs) virtual external;

    function triggerOnSetFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x8da79929),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetFeesFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSetFeesFunction {
    function preSetFeesFunction(PreFunctionContext memory ctx, TokenRegistryV2$SetFeesFunctionInputs memory inputs) virtual external;

    function triggerPreSetFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x8da79929),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetFeesFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSetMaxInitialBuyAmountFunction {
    function onSetMaxInitialBuyAmountFunction(FunctionContext memory ctx, TokenRegistryV2$SetMaxInitialBuyAmountFunctionInputs memory inputs) virtual external;

    function triggerOnSetMaxInitialBuyAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x3eff8c97),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetMaxInitialBuyAmountFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSetMaxInitialBuyAmountFunction {
    function preSetMaxInitialBuyAmountFunction(PreFunctionContext memory ctx, TokenRegistryV2$SetMaxInitialBuyAmountFunctionInputs memory inputs) virtual external;

    function triggerPreSetMaxInitialBuyAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x3eff8c97),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetMaxInitialBuyAmountFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSetPufContractFunction {
    function onSetPufContractFunction(FunctionContext memory ctx, TokenRegistryV2$SetPufContractFunctionInputs memory inputs) virtual external;

    function triggerOnSetPufContractFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x9bc7212f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetPufContractFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSetPufContractFunction {
    function preSetPufContractFunction(PreFunctionContext memory ctx, TokenRegistryV2$SetPufContractFunctionInputs memory inputs) virtual external;

    function triggerPreSetPufContractFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x9bc7212f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetPufContractFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSetPaymentTokenFunction {
    function onSetPaymentTokenFunction(FunctionContext memory ctx, TokenRegistryV2$SetPaymentTokenFunctionInputs memory inputs) virtual external;

    function triggerOnSetPaymentTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x6a326ab1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetPaymentTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSetPaymentTokenFunction {
    function preSetPaymentTokenFunction(PreFunctionContext memory ctx, TokenRegistryV2$SetPaymentTokenFunctionInputs memory inputs) virtual external;

    function triggerPreSetPaymentTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x6a326ab1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetPaymentTokenFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSetTokenImplementationFunction {
    function onSetTokenImplementationFunction(FunctionContext memory ctx, TokenRegistryV2$SetTokenImplementationFunctionInputs memory inputs) virtual external;

    function triggerOnSetTokenImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x88282e2a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetTokenImplementationFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSetTokenImplementationFunction {
    function preSetTokenImplementationFunction(PreFunctionContext memory ctx, TokenRegistryV2$SetTokenImplementationFunctionInputs memory inputs) virtual external;

    function triggerPreSetTokenImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x88282e2a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetTokenImplementationFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSignerWalletFunction {
    function onSignerWalletFunction(FunctionContext memory ctx, TokenRegistryV2$SignerWalletFunctionOutputs memory outputs) virtual external;

    function triggerOnSignerWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x64f0d35e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSignerWalletFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSignerWalletFunction {
    function preSignerWalletFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSignerWalletFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x64f0d35e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSignerWalletFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnSubscriptionContractFunction {
    function onSubscriptionContractFunction(FunctionContext memory ctx, TokenRegistryV2$SubscriptionContractFunctionOutputs memory outputs) virtual external;

    function triggerOnSubscriptionContractFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x69e2d90d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSubscriptionContractFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreSubscriptionContractFunction {
    function preSubscriptionContractFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreSubscriptionContractFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x69e2d90d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSubscriptionContractFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTokenCreationFeeFunction {
    function onTokenCreationFeeFunction(FunctionContext memory ctx, TokenRegistryV2$TokenCreationFeeFunctionOutputs memory outputs) virtual external;

    function triggerOnTokenCreationFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x540a9f6f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokenCreationFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreTokenCreationFeeFunction {
    function preTokenCreationFeeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTokenCreationFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x540a9f6f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTokenCreationFeeFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTokenImplementationFunction {
    function onTokenImplementationFunction(FunctionContext memory ctx, TokenRegistryV2$TokenImplementationFunctionOutputs memory outputs) virtual external;

    function triggerOnTokenImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x2f3a3d5d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokenImplementationFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreTokenImplementationFunction {
    function preTokenImplementationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTokenImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x2f3a3d5d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTokenImplementationFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTokensFunction {
    function onTokensFunction(FunctionContext memory ctx, TokenRegistryV2$TokensFunctionInputs memory inputs, TokenRegistryV2$TokensFunctionOutputs memory outputs) virtual external;

    function triggerOnTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xe4860339),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokensFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreTokensFunction {
    function preTokensFunction(PreFunctionContext memory ctx, TokenRegistryV2$TokensFunctionInputs memory inputs) virtual external;

    function triggerPreTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xe4860339),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTokensFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTransferOwnershipFunction {
    function onTransferOwnershipFunction(FunctionContext memory ctx, TokenRegistryV2$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferOwnershipFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreTransferOwnershipFunction {
    function preTransferOwnershipFunction(PreFunctionContext memory ctx, TokenRegistryV2$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferOwnershipFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnTransferTokenP2Function {
    function onTransferTokenP2Function(FunctionContext memory ctx, TokenRegistryV2$TransferTokenP2FunctionInputs memory inputs) virtual external;

    function triggerOnTransferTokenP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x52037ee5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferTokenP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$PreTransferTokenP2Function {
    function preTransferTokenP2Function(PreFunctionContext memory ctx, TokenRegistryV2$TransferTokenP2FunctionInputs memory inputs) virtual external;

    function triggerPreTransferTokenP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x52037ee5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferTokenP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$OnUniswapFactoryFunction {
    function onUniswapFactoryFunction(FunctionContext memory ctx, TokenRegistryV2$UniswapFactoryFunctionOutputs memory outputs) virtual external;

    function triggerOnUniswapFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x8bdb2afa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUniswapFactoryFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreUniswapFactoryFunction {
    function preUniswapFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUniswapFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x8bdb2afa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUniswapFactoryFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnUniswapRouterFunction {
    function onUniswapRouterFunction(FunctionContext memory ctx, TokenRegistryV2$UniswapRouterFunctionOutputs memory outputs) virtual external;

    function triggerOnUniswapRouterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x735de9f7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUniswapRouterFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreUniswapRouterFunction {
    function preUniswapRouterFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUniswapRouterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x735de9f7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUniswapRouterFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnUniswapSwapP2Function {
    function onUniswapSwapP2Function(FunctionContext memory ctx, TokenRegistryV2$UniswapSwapP2FunctionInputs memory inputs) virtual external;

    function triggerOnUniswapSwapP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x4c851644),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUniswapSwapP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$PreUniswapSwapP2Function {
    function preUniswapSwapP2Function(PreFunctionContext memory ctx, TokenRegistryV2$UniswapSwapP2FunctionInputs memory inputs) virtual external;

    function triggerPreUniswapSwapP2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x4c851644),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUniswapSwapP2Function.selector
        });
    }
}

abstract contract TokenRegistryV2$OnUsedNoncesFunction {
    function onUsedNoncesFunction(FunctionContext memory ctx, TokenRegistryV2$UsedNoncesFunctionInputs memory inputs, TokenRegistryV2$UsedNoncesFunctionOutputs memory outputs) virtual external;

    function triggerOnUsedNoncesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x6717e41c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUsedNoncesFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreUsedNoncesFunction {
    function preUsedNoncesFunction(PreFunctionContext memory ctx, TokenRegistryV2$UsedNoncesFunctionInputs memory inputs) virtual external;

    function triggerPreUsedNoncesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x6717e41c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUsedNoncesFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$OnVerifyUserFunction {
    function onVerifyUserFunction(FunctionContext memory ctx, TokenRegistryV2$VerifyUserFunctionInputs memory inputs) virtual external;

    function triggerOnVerifyUserFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x33fcea17),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVerifyUserFunction.selector
        });
    }
}

abstract contract TokenRegistryV2$PreVerifyUserFunction {
    function preVerifyUserFunction(PreFunctionContext memory ctx, TokenRegistryV2$VerifyUserFunctionInputs memory inputs) virtual external;

    function triggerPreVerifyUserFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "TokenRegistryV2",
            selector: bytes4(0x33fcea17),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVerifyUserFunction.selector
        });
    }
}


struct TokenRegistryV2$EmitAllEvents$CreatorFeePaid {
  address tokenContract;
  address creator;
  uint256 amount;
}

struct TokenRegistryV2$EmitAllEvents$CurvePhaseEnded {
  address tokenContract;
  address poolAddress;
}

struct TokenRegistryV2$EmitAllEvents$Initialized {
  uint64 version;
}

struct TokenRegistryV2$EmitAllEvents$OwnershipTransferred {
  address previousOwner;
  address newOwner;
}

struct TokenRegistryV2$EmitAllEvents$PoolAddressSet {
  address tokenContract;
  address poolAddress;
}

struct TokenRegistryV2$EmitAllEvents$TokenBought {
  address tokenContract;
  address buyer;
  uint256 paymentAmount;
  uint256 tokenAmount;
  bool userHasProPlan;
}

struct TokenRegistryV2$EmitAllEvents$TokenCreated {
  address tokenContract;
  address creator;
  string name;
  string symbol;
  bool userHasProPlan;
  uint256 initialBuyAmountX;
}

struct TokenRegistryV2$EmitAllEvents$TokenPriceChanged {
  address tokenContract;
  uint256 newPrice;
  uint256 timestamp;
}

struct TokenRegistryV2$EmitAllEvents$TokenSold {
  address tokenContract;
  address seller;
  uint256 tokenAmount;
  uint256 paymentAmount;
  bool userHasProPlan;
}

contract TokenRegistryV2$EmitAllEvents is
  TokenRegistryV2$OnCreatorFeePaidEvent,
TokenRegistryV2$OnCurvePhaseEndedEvent,
TokenRegistryV2$OnInitializedEvent,
TokenRegistryV2$OnOwnershipTransferredEvent,
TokenRegistryV2$OnPoolAddressSetEvent,
TokenRegistryV2$OnTokenBoughtEvent,
TokenRegistryV2$OnTokenCreatedEvent,
TokenRegistryV2$OnTokenPriceChangedEvent,
TokenRegistryV2$OnTokenSoldEvent
{
  event CreatorFeePaid(TokenRegistryV2$EmitAllEvents$CreatorFeePaid);
  event CurvePhaseEnded(TokenRegistryV2$EmitAllEvents$CurvePhaseEnded);
  event Initialized(TokenRegistryV2$EmitAllEvents$Initialized);
  event OwnershipTransferred(TokenRegistryV2$EmitAllEvents$OwnershipTransferred);
  event PoolAddressSet(TokenRegistryV2$EmitAllEvents$PoolAddressSet);
  event TokenBought(TokenRegistryV2$EmitAllEvents$TokenBought);
  event TokenCreated(TokenRegistryV2$EmitAllEvents$TokenCreated);
  event TokenPriceChanged(TokenRegistryV2$EmitAllEvents$TokenPriceChanged);
  event TokenSold(TokenRegistryV2$EmitAllEvents$TokenSold);

  function onCreatorFeePaidEvent(EventContext memory ctx, TokenRegistryV2$CreatorFeePaidEventParams memory inputs) virtual external override {
    emit CreatorFeePaid(TokenRegistryV2$EmitAllEvents$CreatorFeePaid(inputs.tokenContract, inputs.creator, inputs.amount));
  }
function onCurvePhaseEndedEvent(EventContext memory ctx, TokenRegistryV2$CurvePhaseEndedEventParams memory inputs) virtual external override {
    emit CurvePhaseEnded(TokenRegistryV2$EmitAllEvents$CurvePhaseEnded(inputs.tokenContract, inputs.poolAddress));
  }
function onInitializedEvent(EventContext memory ctx, TokenRegistryV2$InitializedEventParams memory inputs) virtual external override {
    emit Initialized(TokenRegistryV2$EmitAllEvents$Initialized(inputs.version));
  }
function onOwnershipTransferredEvent(EventContext memory ctx, TokenRegistryV2$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(TokenRegistryV2$EmitAllEvents$OwnershipTransferred(inputs.previousOwner, inputs.newOwner));
  }
function onPoolAddressSetEvent(EventContext memory ctx, TokenRegistryV2$PoolAddressSetEventParams memory inputs) virtual external override {
    emit PoolAddressSet(TokenRegistryV2$EmitAllEvents$PoolAddressSet(inputs.tokenContract, inputs.poolAddress));
  }
function onTokenBoughtEvent(EventContext memory ctx, TokenRegistryV2$TokenBoughtEventParams memory inputs) virtual external override {
    emit TokenBought(TokenRegistryV2$EmitAllEvents$TokenBought(inputs.tokenContract, inputs.buyer, inputs.paymentAmount, inputs.tokenAmount, inputs.userHasProPlan));
  }
function onTokenCreatedEvent(EventContext memory ctx, TokenRegistryV2$TokenCreatedEventParams memory inputs) virtual external override {
    emit TokenCreated(TokenRegistryV2$EmitAllEvents$TokenCreated(inputs.tokenContract, inputs.creator, inputs.name, inputs.symbol, inputs.userHasProPlan, inputs.initialBuyAmountX));
  }
function onTokenPriceChangedEvent(EventContext memory ctx, TokenRegistryV2$TokenPriceChangedEventParams memory inputs) virtual external override {
    emit TokenPriceChanged(TokenRegistryV2$EmitAllEvents$TokenPriceChanged(inputs.tokenContract, inputs.newPrice, inputs.timestamp));
  }
function onTokenSoldEvent(EventContext memory ctx, TokenRegistryV2$TokenSoldEventParams memory inputs) virtual external override {
    emit TokenSold(TokenRegistryV2$EmitAllEvents$TokenSold(inputs.tokenContract, inputs.seller, inputs.tokenAmount, inputs.paymentAmount, inputs.userHasProPlan));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](9);
    triggers[0] = this.triggerOnCreatorFeePaidEvent();
    triggers[1] = this.triggerOnCurvePhaseEndedEvent();
    triggers[2] = this.triggerOnInitializedEvent();
    triggers[3] = this.triggerOnOwnershipTransferredEvent();
    triggers[4] = this.triggerOnPoolAddressSetEvent();
    triggers[5] = this.triggerOnTokenBoughtEvent();
    triggers[6] = this.triggerOnTokenCreatedEvent();
    triggers[7] = this.triggerOnTokenPriceChangedEvent();
    triggers[8] = this.triggerOnTokenSoldEvent();
    return triggers;
  }
}