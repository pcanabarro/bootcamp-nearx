// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d);

        counter = new Counter();
        console.log('Address:', address(counter));

        console.log('getNumber:', counter.getNumber());
        counter.increment();
        console.log('getNumber:', counter.getNumber());
        counter.setNumber(5);
        console.log('Value updated to 5');
        console.log('getNumber:', counter.getNumber());

        vm.stopBroadcast();
    }

    // == Logs ==
    //   Address: 0x8464135c8F25Da09e49BC8782676a84730C318bC
    //   getNumber: 0
    //   getNumber: 1
    //   Value updated to 5
    //   getNumber: 5
}
