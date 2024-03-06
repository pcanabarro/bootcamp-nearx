# Contract

### Data types

- uint - unassigned integer
- int - integer
- bool - boolean
- address - save addres
- string -
- bytes -

### Operations syntax

- Aritmetic: +, -, *, /, %
- Attribution: =, +=. -=
- Comparation: ==, !=, >, <, <=, >=
- Logic: &&, ||, !

### Datas (Memory, Storage, calldata)

- Array, Struct, Mapping

### Functions

- Visibility: public, private, internal, external.
- Modifiers: view, pure, payable.

### Cast calls & sends

***- Call getNumber:***

```bash
cast call --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --rpc-url "localhost:8545" "0x8464135c8f25da09e49bc8782676a84730c318bc" "getNumber()(uint8)"
```

***- Send setNumber:***

```bash
cast send --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --rpc-url "localhost:8545" "0x8464135c8f25da09e49bc8782676a84730c318bc" "setNumber(uint8)()" 22
```

***- Send increment:***

```bash
cast send --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --rpc-url "localhost:8545" "0x8464135c8f25da09e49bc8782676a84730c318bc" "increment()()"
```

### Logs after run script

```yaml
    Transaction: 0x4cd4f2736afea4460aa2d254e3bd67528fe837ddf6fb59fa9e0b8488f4fcee4e
    Contract created: 0x8464135c8f25da09e49bc8782676a84730c318bc
    Gas used: 123853

    Block Number: 1
    Block Hash: 0xec5b87ebe9670621a2bf11d8a8967d30e8822cb03ce27daf1bf73aee206ea4a3
    Block Time: "Wed, 6 Mar 2024 18:52:13 +0000"



    Transaction: 0xad647f6bed74e1c41a09f0ebb5ee510385915d354fd833b26b8286ba61c965a0
    Gas used: 23366

    Block Number: 2
    Block Hash: 0x3f8bbfb1f639a3abf3f286c7b586fc74fb60abb8dbc3751f9dae2d55183f3a3f
    Block Time: "Wed, 6 Mar 2024 18:52:14 +0000"


    Transaction: 0x4fed6548d7f0c7f0f5a0c965d1e5698ad74b02bb363f9a498fa384092244b441
    Gas used: 43570

    Block Number: 3
    Block Hash: 0xf6b88816f1aca3026e5e64de17a1592724f1507f5f77fc949cc3b0340bfe6e56
    Block Time: "Wed, 6 Mar 2024 18:52:15 +0000"



    Transaction: 0x4664b409707309a9b34eee3b0f7c2b3c65697dad98c13f12be14df44dbb1f54c
    Gas used: 23366

    Block Number: 4
    Block Hash: 0xd97076aa53de8725677d0a1fb8379bf96dca2006c6f231c4ccc9262ae58c85f7
    Block Time: "Wed, 6 Mar 2024 18:52:16 +0000"



    Transaction: 0xe9a964628b9bc1c5e53a6ac403c8ffff07aa3b666c92466caeea97a20d72761d
    Gas used: 26470

    Block Number: 5
    Block Hash: 0xd0ff0cfaecf52063cff93154af5a716a4083638a8606a6942eed1ef9fe3514dc
    Block Time: "Wed, 6 Mar 2024 18:52:17 +0000"



    Transaction: 0x6c4812c9c2449b7105197a645402fa65245a65472624b87c21c0ee1604e650cb
    Gas used: 23366

    Block Number: 6
    Block Hash: 0xc372d49704f3097e9d6ac89f8fdee4bc1ccfbcdf297997a6954cc42d7a50c2c2
    Block Time: "Wed, 6 Mar 2024 18:52:18 +0000"
```
