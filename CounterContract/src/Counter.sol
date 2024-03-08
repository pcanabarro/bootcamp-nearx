// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    // uint8 = 0 - 2^(8-1) = 128
    // uint256 = 0 - 2^(256-1) = a lot
    uint8 number;

    function getNumber() public view returns(uint8) {
        return number;
    }

    function setNumber(uint8 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    // function deposit() public payable {
    //     msg.value; //Get ETH amount sent
    // }
}
