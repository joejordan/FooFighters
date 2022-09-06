// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import { Cheats } from "forge-std/Cheats.sol";
import { console } from "forge-std/console.sol";
import { PRBTest } from "@prb/test/PRBTest.sol";

contract FooFightersTest is PRBTest, Cheats {
    function setUp() public {
        // solhint-disable-previous-line no-empty-blocks
    }

    /// @dev Run Forge with `-vvvv` to see console logs.
    function testExample() public {
        console.log("Hello World");
        assertTrue(true);
    }
}
