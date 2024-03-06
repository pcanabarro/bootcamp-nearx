
# FlipperContract

## Run script to deploy contract in Anvil Blockchain VM

```bash
cd FlipperContract
forge build
forge script/Flipper.s.sol
```

## Requests to Anvil Blockchain VM

***Calling GetValue method:***

```bash
cast call --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://localhost:8545" "0x5fbdb2315678afecb367f032d93f642f64180aa3" "getValue()(bool)"
```

***Calling flip() method:***

```bash
cast send --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://localhost:8545" "0x5fbdb2315678afecb367f032d93f642f64180aa3" "flip()"
```
