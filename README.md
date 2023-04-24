# Hardhat 토큰 배포 테스트 (Mint/Burn 포함)

### Contract file (.sol)
./contracts/AppleToken.sol

### Deploy script file
./scripts/deploy.js

## Setting for choosing the network

hardhat.config.js
```agsl
module.exports = {
  ....
  networks: {
    hardhat: {
      blockGasLimit: 10000000,
    },
    gpex_testnet: {
      url: RPC_URL,
      accounts: {
        mnemonic: YOUR_MNEMONIC_KEY
      },
    }
  },
};
```

## Build
````agsl
npx hardhat compile
````

## Deploy
```agsl
npx hardhat run --network gpex_testnet scripts/deploy.js
```


