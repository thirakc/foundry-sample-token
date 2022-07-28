## Compile smart contract
```
forge build
```

## Test
```
forge test -vv
```

## Run ethereum local network
```
anvil
```

## Deploy smart contract
```
forge script script/SampleToken.s.sol:SampleTokenScript --fork-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

## Check balance
```
cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 "balanceOf(address)(int)" "0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266"
```

## Transfer token
```
cast send 0x5fbdb2315678afecb367f032d93f642f64180aa3 "transfer(address,uint256)(int)" 0x70997970c51812dc3a010c7d01b50e0d17dc79c8 100000000000000000 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```