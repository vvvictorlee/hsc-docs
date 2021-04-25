# 概况

可通过资产跨链桥，将ETH、BTC、稳定币等资产映射到Hoo，实现方式为在源链上锁定一定数量的资产后在Hoo生成对应数量的Token。

Hoo鼓励社区开发者提供更多去中心化的跨链解决方案。

本文档描述了项目方自行将 Token 从源链承兑到 HSC 的方案。

> [跨链桥请参考](./hoobridge.md)

项目 **自行** 维护 Token 在包含 HSC 的多链上的总量平衡，对 Token 的公信力进行背书。

主要的流程包括：

```
1）初始准备
2）源链 -> HSC 链
3）HSC 链->源链
```

## 名词说明

源链：Token 所在的链（例如 Ethereum）

Src_Token：源链上的 Token，可能是一个合约，或者是原生 Token

锁仓地址或合约：用于锁定 Token 的地址

Hoo_Token：HSC 的链上的 Token

## 初始准备

1）源链上部署锁仓地址或者合约 Src_Lock_Addr

2）HSC 上部署 Token：Hoo_Token

3）HSC 上部署锁仓地址或者合约 Hoo_Lock_Addr

如果需要多签合约，可以参考[gnosis/MultiSigWallet](https://github.com/gnosis/MultiSigWallet)。

如果需要带有 mint/burn 的合约，可以参考[OpenZeppelin/openzeppelin-contracts](https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20)。

> 为了维持公信力，项目需向社区公示以上信息，邀请社区共同监督。并且针对两个链上币的总量进行监控

## 源链->HSC 链

1）源链锁定 Src_Token

将一定量的 Src_Token 转到 Src_Lock_Addr 进行锁定

2）在 HSC 链上释放 Hoo_Token

操作执行 mint 操作，赋予 Hoo_Lock_Addr 对应量的 Hoo_Token

## HSC 链->源链

1）HSC 链锁定 Hoo_Token

操作 Hoo_Token，执行 burn 操作

2）在源链上释放出 Src_Token

操作 Src_Lock_Addr，解锁对应量
