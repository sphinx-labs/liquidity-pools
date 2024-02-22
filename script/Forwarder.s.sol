// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.21;

import {AxelarForwarder} from "../src/gateway/routers/axelar/Forwarder.sol";
import {SphinxConfig} from "./SphinxConfig.sol";
import "forge-std/Script.sol";

// Script to deploy Axelar over XCM relayer.
contract ForwarderScript is Script, SphinxConfig {
    function setUp() public override {
        super.setUp();
    }

    function run() public sphinx {
        address admin = vm.envAddress("ADMIN");

        AxelarForwarder router = new AxelarForwarder(address(vm.envAddress("AXELAR_GATEWAY")));

        router.rely(admin);
    }
}
