# NearX Bootcamp - Training for Optimism Bootcamp

by [NearX](https://nearx.com.br/)

This repo is destinated for training and undestanding solidity language. If you have any question about something, please, ask me!

Ensure that you have installed [Foundry](https://book.getfoundry.sh/getting-started/installation)!

```bash
git clone https://github.com/pcanabarro/bootcamp-nearx.git
```

### Run Anvil VM Blockchain

```bash
anvil -b 10
```

### Solidity Notes

__All variables__

- There is no null ou undefined value on solidity, every var has their own default value ((U)int = 0, bool = false)
- You can't create a function with the same var name
- Reference types need memory location

__Fixed Point Numbers__

- ufixed128x18 => 128bits with 18 decimals points
- Good practice is assign decimals points in you contract
- Most decimals used is 18

### Storage, Memory, Calldata

- Storage - Saved on blockchain. Expensive to change blockchain storage.
- Memory - Saved on contract, after deploy it will be discarted and saved on blockchain. Medium cost to interact on blockchain.
- Calldata - Read memory, you will not be able to interact or create copies. Low cost to interact with it, you only read.

### NOTES

__EIP__ - Ethereum Improvement Proposal
First EIP was the proposal of create EIPs

- EIP-3675: Upgrade consensus to PoS

__ERC__ - Ethereum Request for Comment
Focused on Smart Contracts (20, 721, 1155)

- ERC-20: Token Standard - Metamask configured to use ERC-20 token pattern.
- ERC-721: Non-Fundible Token Standard - Most used to creat NFTs.
- ERC-1155: Multi Token Standard - Mix of two patterns
- ERC-1159: Fee market change - Refactory for less tax volatility
- ERC-2535: Diamonds, Multi-Facet Proxy
- ERC-4337: Account Abstraction using Alt Mempool (New)

__Blockachain EVM-Based__

- EVM: Ethereum Virtual Machine
- JVM: Java Virtual Machine

EVM is a virtual machine where you Solidity code is compiled and it can run in Ethereum blockchain.
