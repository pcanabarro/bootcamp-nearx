# NearX Bootcamp - Training for Optimism Bootcamp
by https://nearx.com.br/

This repo is destinated for training and undestanding solidity language. If you have any question about something, please, ask me!

Ensure that you have installed [Foundry](https://book.getfoundry.sh/getting-started/installation)!

### Run Anvil VM Blockchain
``` bash
anvil -b 10
```

### FlipperContract
bash1
``` bash
git clone https://github.com/pcanabarro/bootcamp-nearx.git
cd FlipperContract
forge build
forge script/Flipper.s.sol
cast call --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://localhost:8545" "0x5fbdb2315678afecb367f032d93f642f64180aa3" "getValue()(bool)"
cast send --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://localhost:8545" "0x5fbdb2315678afecb367f032d93f642f64180aa3" "flip()"
cast call --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://localhost:8545" "0x5fbdb2315678afecb367f032d93f642f64180aa3" "getValue()(bool)"
```

## NOTES
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