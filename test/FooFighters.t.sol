// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import { Cheats } from "forge-std/Cheats.sol";
import { console } from "forge-std/console.sol";
import { PRBTest } from "@prb/test/PRBTest.sol";

contract FooFightersTest is PRBTest, Cheats {
    uint256 public goerliFork;
    address public playerAddress = address(0x5243d93bCdC8941Aa4b925c712128ba4933007C0);
    function setUp() public {
        goerliFork = vm.createSelectFork(vm.envString("ETH_GOERLI_RPC_URL"));
    }

    /// @dev Run Forge with `-vvvv` to see console logs.
    function testExample() public {
        console.log("Hello World");
        assertTrue(true);
    }
}
