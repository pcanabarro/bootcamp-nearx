// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Token {
  string name;
  string symbol;
  uint256 decimals;
  uint256 totalSupply;

  // Will be emitted when called by emit function
  event Transfer(address from, address to, uint256 value);
  event Approval(address owner, address spender, uint256 value);

  mapping(address => uint256) balances;
  // | key                                        | value   |
  // | address                                    | uint256 |
  // | 0xa0Ee7A142d267C1f36714E4a8F75612F20a79720 | 0       |
  // | 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 | 1       |
  // | 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc | 32      |
  // | 0x976EA74026E726554dB657fA54763abd0C3a0aa9 | 3       |

  mapping(address => mapping(address => uint256)) allowances;
  // | key                                        | key/value | value   |
  // | address                                    | address   | uint256 |
  // | 0xa0Ee7A142d267C1f36714E4a8F75612F20a79720 | 0x15...65 | 23       |
  // | 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 | 0x99...dc | 11       |
  // | 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc | 0x29...1a | 52      |
  // | 0x976EA74026E726554dB657fA54763abd0C3a0aa9 | 0x93...d2 | 31       |

  constructor(string memory _name, string memory _symbol) {
      name = _name;
      symbol = _symbol;
      decimals = 18;

      totalSupply = 10000 * 10e18;
      balances[msg.sender] = totalSupply;
  }

  function balanceOf(address _owner) public view returns(uint256) {
    // uint256 userBalance = balances[_owner];
    // return userBalance;
    return balances[_owner];
  }

  function transfer(address _to, uint256 _value) public returns(bool) {
    // Using solodity you'll use require() conditional func
    require(balances[msg.sender] >= _value, "INSUFFICIENT_AMOUNT");

    balances[msg.sender] -= _value;
    balances[_to] += _value;

    emit Transfer(msg.sender, _to, _value);
    return true;
  }

  function approve(address _spender, uint256 _value) public {
    allowances[msg.sender][_spender] = _value;

    emit Approval(msg.sender, _spender, _value);
  }

  function transferFrom(address _from, address _to, uint256 _value) public {
    require(allowances[_from][msg.sender] >= _value, "INSUFFICIENT_ALLOWANCE");

    balances[_from] -= _value;
    balances[_to] += _value;

    emit Transfer(_from, _to, _value);
  }

  function allowance(address _owner, address _spender) public view returns(uint256) {
    return allowances[_owner][_spender];
  }

  //   function getName() public view returns(string memory) {
  //   return name;
  // }

  // function getSymbol() public view returns(string memory) {
  //   return symbol;
  // }

  // function getDecimal() public view returns(uint256) {
  //   return decimal;
  // }
}
