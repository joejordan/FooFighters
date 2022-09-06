// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import { Script } from "forge-std/Script.sol";
import { console } from "forge-std/console.sol";
import { FooFighters } from "../src/FooFighters.sol";

contract FooFightersScript is Script {
    FooFighters internal fooFighters = FooFighters(address(0x9490165195503fcF6A0FD20aC113223fEfb66eD5));
    // ids: 20, 1109, 1187, 1195, 1199
    uint[] myIds = [20, 1109, 1187, 1195, 1199];

    function run() public {
        vm.startBroadcast();
        findATarget();
        vm.stopBroadcast();
    }

    function findATarget() public {
        bool targetFound;
        uint targetId;
        uint randomId;
        int power;

        while (!targetFound) {
            randomId = unsafeRandom(10148, 6669);
            power = fooFighters.power(randomId);
            console.log("ID:", randomId);
            console.log("POWER:", uint(power));
            console.log("HEALTH:", fooFighters.health(randomId));
            if (randomId > 9500) {
                targetFound = true;
            }
        }
    }

    function attackTarget(uint idToAttack) public {
        // fooFighters.
    }

    /// @dev Returns a random value in [0, max-1]
    function unsafeRandom(uint256 max, uint256 seed) internal view returns (uint256) {
        return uint256(keccak256(abi.encode(blockhash(block.number - 1), block.timestamp, msg.sender, seed))) % max;
    }
}

