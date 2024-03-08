# TokenContract

This folder is destinated to create manually an ERC-20 token contract, learning basics knowledge of how a token is created and defined.

Normally we use tested and audited libraries when want to deploy on production (Mainnet or Testnet).

### NOTES

***This is an example of a basic*** ***token:***

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Token {
  string name;
  string symbol;
  uint256 decimal;

  constructor(string memory _name, string memory _symbol) {
      name = _name;
      symbol = _symbol;
  }
}
```
