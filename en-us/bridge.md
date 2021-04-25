# Summary

Users can map ETH, BTC, stable coins and other assets to HSC through the asset cross-chain bridge, which is achieved by locking a certain number of assets on the source chain and generating the corresponding number of Tokens in HSC.

HSC encourages community developers to provide more decentralized cross-chain solutions.

This document describes the option for project parties to map Tokens from the source chain to HSC on their own.

> [hsc-brige ref here](./hoobridge.md)

The project owner **self** maintains the total balance of Token on the multi-chain including HSC, and endorses the credibility of Token.

The main processes include：

```
1）Initial Preparation
2）Source Chain -> HSC Chain
3）HSC Chain -> Source Chain
```

## Glossary 

Source Chain: The source chain where the Token is located (e.g. Ethereum)

Src_Token: Token on the source chain, possibly a contract, or a native Token

Locked address or contract: the address used to lock the Token

Hoo_Token: Token on HSC's chain
## Initial Preparation

1) Deploy the lock address or contract on the source chain `Src_Lock_Addr`

2) Deploy Token on HSC: `Hoo_Token`

3) Deploy a lock address or contract on HSC `Hoo_Lock_Addr`

If you need multiple sign contracts, you can refer to [gnosis/MultiSigWallet](https://github.com/gnosis/MultiSigWallet).

If you need contracts with mint/burn, you can refer to [OpenZeppelin/openzeppelin-contracts](https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/) contracts/token/ERC20).

Translated with www.DeepL.com/Translator (free version)

> In order to maintain credibility, the project needs to publicize the above information to the community and invite the community to supervise it. And to monitor the total amount of coins on both chains.

## Source Chain->HSC Chain

1) Source chain locking `Src_Token`

Transfer a certain amount of `Src_Token` to `Src_Lock_Addr` for locking

2) Release `Hoo_Token` on the HSC chain

Execute mint operation to give `Hoo_Lock_Addr` the corresponding amount of `Hoo_Token`

## HSC chain->Source chain

1) HSC chain lock `Hoo_Token`

Execute burn operation, destroy `Hoo_Token`

2) Release `Src_Token` on the source chain

operation `Src_Lock_Addr` to unlock the corresponding volume