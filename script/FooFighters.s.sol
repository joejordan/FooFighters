// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import { Script } from "forge-std/Script.sol";
import { Foo } from "../src/FooFighters.sol";

contract FooScript is Script {
    Foo internal foo;

    function run() public {
        vm.startBroadcast();
        foo = new Foo();
        vm.stopBroadcast();
    }
}
