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