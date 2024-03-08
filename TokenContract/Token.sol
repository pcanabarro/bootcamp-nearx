// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Token {
  string name;
  string symbol;
  uint256 decimal;

  // Will be emitted when called by emit function
  event Transfer(address from, address to, uint256 value);
  event Approval(address owner, address spender, uint256 value);

  mapping(address => uint256) balance;
  // | key                                        | value   |
  // | address                                    | uint256 |
  // | 0xa0Ee7A142d267C1f36714E4a8F75612F20a79720 | 0       |
  // | 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 | 1       |
  // | 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc | 32      |
  // | 0x976EA74026E726554dB657fA54763abd0C3a0aa9 | 3       |

  mapping(address => mapping(address => uint256)) allowance;
  // | key                                        | key/value | value   |
  // | address                                    | address   | uint256 |
  // | 0xa0Ee7A142d267C1f36714E4a8F75612F20a79720 | 0x15...65 | 23       |
  // | 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 | 0x99...dc | 11       |
  // | 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc | 0x29...1a | 52      |
  // | 0x976EA74026E726554dB657fA54763abd0C3a0aa9 | 0x93...d2 | 31       |

  constructor(string memory _name, string memory _symbol) {
      name = _name;
      symbol = _symbol;
  }

  function getName() public view returns(string memory) {
    return name;
  }

  function getSymbol() public view returns(string memory) {
    return symbol;
  }

  function getDecimal() public view returns(uint256) {
    return decimal;
  }

  function balanceOf(address _owner) public view returns(uint256) {
    // uint256 userBalance = balance[_owner];
    // return userBalance;
    return balance[_owner];
  }

  function transfer(address _to, uint256 _value) public returns(bool) {
    // Using solodity you'll use require() conditional func
    require(balance[msg.sender] >= _value, "INSUFFICIENT_AMOUNT");

    balance[msg.sender] -= _value;
    balance[_to] += _value;

    emit Transfer(msg.sender, _to, _value);
    return true;
  }

  function approve( address _spender, uint256 _value) public {
    allowance[msg.sender][_spender] = _value;

    emit Approval(msg.sender, _spender, _value);
  }
}
