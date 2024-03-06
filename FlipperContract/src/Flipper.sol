// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Flipper {
    bool value;

    constructor() {
        value = true;
        getValue();
    }

    // function getValue() external returns(bool) {} // Only someone interacting on blockchain, called by external user
    // function getValue() internal returns(bool) {} // "Restricted to view", called only internal
    // function getValue() private returns(bool) {} // Only inheritance level
    function getValue() public returns(bool) { // Everyone can call (people or contract)
        return value;
    }

    function flip() external {
        value = !value;
    }
}
