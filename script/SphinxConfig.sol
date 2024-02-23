// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.21;

import {Sphinx, Network} from "@sphinx-labs/contracts/SphinxPlugin.sol";

contract SphinxConfig is Sphinx {
    function setUp() public virtual {
        sphinxConfig.owners = [address(0)]; // Add owner(s)
        sphinxConfig.orgId = ""; // Add Sphinx org ID
        sphinxConfig.testnets = [
            Network.sepolia,
            Network.polygon_mumbai
        ];
        sphinxConfig.projectName = "Liquidity_Pools";
        sphinxConfig.threshold = 1;
    }
}
