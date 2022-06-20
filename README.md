## The Solar System NFT
[![XjfG1P.jpg](https://s1.ax1x.com/2022/06/19/XjfG1P.jpg)](https://imgtu.com/i/XjfG1P)

## Overview
Build and deploy an ERC721 (NFT) smart contract to Ethereum Rinkeby using foundry.
Collection: [The Solar System NFT](https://testnets.opensea.io/collection/the-solar-system)
## Contracts
Name | Code | Address | Network
------------ | ------------- | ------------- | -------------
YPC |[GitHub](https://github.com/YuppieCC/TheSolarSystem-NFT/blob/main/src/NFT.sol)|[0x5f252ed9001b53f830fb17a13d0d84b6f49683e6](https://rinkeby.etherscan.io/address/0x5f252ed9001b53f830fb17a13d0d84b6f49683e6) | rinkeby


## Development

```Shell
# PRIVATE_KEY: Export from your Wallet
cp .env.example .env
make test

# if tests all passed, deploy all contracts.
# scripting is a way to declaratively deploy contracts using Solidity
# instead of using the more limiting and less user friendly `forge create`.
make scripting

# if scripting isn't ok, you can deploy a single contract at once time.
make deploy-contract DEPLOY_CONTRACT={DEPLOY_CONTRACT} CONSTRUCTOR_ARGS={CONSTRUCTOR_ARGS}
```


## Gas Reports

```
╭─────────────────┬─────────────────┬───────┬────────┬───────┬─────────╮
│ NFT contract    ┆                 ┆       ┆        ┆       ┆         │
╞═════════════════╪═════════════════╪═══════╪════════╪═══════╪═════════╡
│ Deployment Cost ┆ Deployment Size ┆       ┆        ┆       ┆         │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ 1265098         ┆ 6632            ┆       ┆        ┆       ┆         │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ Function Name   ┆ min             ┆ avg   ┆ median ┆ max   ┆ # calls │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ balanceOf       ┆ 705             ┆ 705   ┆ 705    ┆ 705   ┆ 2       │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ mintTo          ┆ 71899           ┆ 71899 ┆ 71899  ┆ 71899 ┆ 2       │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ tokenURI        ┆ 13604           ┆ 13604 ┆ 13604  ┆ 13604 ┆ 1       │
╰─────────────────┴─────────────────┴───────┴────────┴───────┴─────────╯
```

