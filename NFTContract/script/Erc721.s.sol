// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Erc721} from "../src/Erc721.sol";

contract Erc721Script is Script {
  Erc721 Erc721;

  function run() public {
    vm.startBroadcast();

    vm.stopBroadcast();
  }
}
