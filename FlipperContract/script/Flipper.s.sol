// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperScript is Script {
    Flipper flipper;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);

        // Instantiate/Deploy contract
        flipper = new Flipper();
        console.log("Address:", address(flipper)); //Contract Address

        // Call contract (getValue)
        console.log(flipper.getValue());

        // Call contract (flip)
        flipper.flip();

        // Call contract (getValue)
        console.log(flipper.getValue());

        vm.stopBroadcast();
    }
}
