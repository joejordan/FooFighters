// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import { Owned } from "solmate/auth/Owned.sol";
import { FooFighters } from "./FooFighters.sol";

contract FooFightersBot is Owned {
    FooFighters public fooFighters;
    address public fooFightersAddress = address(0x9490165195503fcF6A0FD20aC113223fEfb66eD5);

    constructor() Owned(msg.sender) {
        fooFighters = FooFighters(fooFightersAddress);
    }

    function mintFooFighters(uint16 _amount) external onlyOwner {
        for (uint256 i = 0; i < _amount; ++i) {
            fooFighters.FOOFIGHTER_mint();
        }
    }

}