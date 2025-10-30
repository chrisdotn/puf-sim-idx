// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./TokenRegistryV2Listener.sol";

contract Triggers is BaseTriggers {
    address constant TOKEN_REGISTRY_ADDRESS =
        0x3140167E09d3cfB67b151C25d54fa356f644712D;
    address constant TOKEN_REGISTRY_V4_ADDRESS =
        0xc301BaCE6E9409B1876347a3dC94EC24D18C1FE4;

    uint64 constant TOKEN_REGISTRY_DEPLOYMENT_BLOCK = 8416059;
    uint64 constant TOKEN_REGISTRY_V4_DEPLOYMENT_BLOCK = 19020796;

    function triggers() external virtual override {

        TokenRegistryV2Listener tokenRegistryV2Listener = new TokenRegistryV2Listener();

        Trigger[] memory registryTriggers = new Trigger[](4);
        registryTriggers[0] = tokenRegistryV2Listener.triggerOnTokenCreatedEvent();
        registryTriggers[1] = tokenRegistryV2Listener.triggerOnTokenBoughtEvent();
        registryTriggers[2] = tokenRegistryV2Listener.triggerOnTokenSoldEvent();
        registryTriggers[3] = tokenRegistryV2Listener.triggerOnCurvePhaseEndedEvent();


        addTriggers(
            chainContract(
                Chains.WorldChain.withStartBlock(
                    TOKEN_REGISTRY_V4_DEPLOYMENT_BLOCK
                ),
                TOKEN_REGISTRY_V4_ADDRESS
            ),
            registryTriggers
        );
    }
}
