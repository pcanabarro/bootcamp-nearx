// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ERC721 {
  string public name;
  string public symbol;

  mapping (uint256 => address) private nft_owners;
  // | key     | value                                      |
  // | uint256 | address                                    |
  // | 23      | 0xa0Ee7A142d267C1f36714E4a8F75612F20a79720 |
  // | 3       | 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 |
  // | 32      | 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc |

  mapping(address owner => mapping(address operator => bool)) operator_approvals;
  // | key                                        | key/value | value  |
  // | address                                    | address   | bool   |
  // | 0xa0Ee7A142d267C1f36714E4a8F75612F20a79720 | 0x15...65 | true   |
  // | 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 | 0x99...dc | false  |
  // | 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc | 0x29...1a | false  |
  // | 0x976EA74026E726554dB657fA54763abd0C3a0aa9 | 0x93...d2 | falase |

  constructor(string memory _name, string memory _symbol) {
    name = _name;
    symbol = _symbol;
  }

  function transfer(address _to, uint256 _id) public {
    nft_owners[_id] = _to;
  }

  function ownerOf(uint256 _tokenId) public view virtual returns(address) {
    return nft_owners[_tokenId];
  }

  function tokerURI(uint256 _tokenId) public view virtual returns(string memory) {
    uint256 tokenUpdate = _tokenId + 1; // This var is saved on memory
    return "SomeURI_IPFS";
  }

  //EVM MEMORY
  // | Storage | Memory | calldata
  // | Storage | Memory | calldata
  // | Storage | Memory | calldata
}
