#!/usr/bin/env bash
geth --exec 'personal.newAccount("")' attach ~/testnet/data/geth.ipc
geth --exec 'personal.unlockAccount(eth.accounts[0],"",0)' attach ~/testnet/data/geth.ipc


geth --exec 'miner.start(1)' attach ~/testnet/data/geth.ipc

geth --exec 'miner.stop()' attach ~/testnet/data/geth.ipc

geth --exec 'eth.accounts[0]' attach ~/testnet/data/geth.ipc
geth --exec 'admin.nodeInfo.enode' attach ~/testnet/data/geth.ipc



geth --exec 'admin.peers' attach data/geth.ipc

geth --exec 'web3.personal.importRawKey("","")' attach data/geth.ipc


geth --exec 'admin.addPeer("enode://160ae2ec30b079ace074cfa28c73757f2493fd7afd807e0da901e68eff31ead944ff6eec7b854dfffffb1b4d4cc886829455e62f8422edd937694498544f9c40@13.230.35.234:33668")' attach data/geth.ipc

geth --exec 'admin.addPeer("enode://d4718eb176c63c4752adeaf050df31b93a85de7e37e69b82fbe7a6f28f4e556c976a227250367a9e9ffd2e08b6d513448f7dff4969e4afaabb170b71eac2907b@35.73.127.28:33668")' attach data/geth.ipc

geth --exec 'admin.addPeer("enode://bfe0bdaaeed5767f8a79204f18a45afc5a802eed6428b2c0aebf757f3a98276268090d5b6f1f839330f6b0cd397e22ad4f99affefd7a132421d43446c0a3f8a8@18.181.232.158:33668")' attach data/geth.ipc

geth --exec 'admin.addPeer("enode://160ae2ec30b079ace074cfa28c73757f2493fd7afd807e0da901e68eff31ead944ff6eec7b854dfffffb1b4d4cc886829455e62f8422edd937694498544f9c40@13.230.35.234:33668")' attach data/geth.ipc


geth --exec 'eth.sendTransaction({from:eth.accounts[1],to:"0x598FeaB9ff6A090a7fAA9dF0F3B4df3F0c8D35FC",value:web3.toWei(100,"ether")})' attach ~/testnet/data/geth.ipc
geth --exec 'eth.sendTransaction({from:eth.accounts[1],to:"0x4a79c58CCf9d80353c02357F26D6f7b99fA9991e",value:web3.toWei(100,"ether")})' attach ~/testnet/data/geth.ipc
geth --exec 'eth.sendTransaction({from:eth.accounts[1],to:"0xC49926C4124cEe1cbA0Ea94Ea31a6c12318df947",value:web3.toWei(100,"ether")})' attach ~/testnet/data/geth.ipc


geth --exec 'web3.fromWei(eth.getBalance("0x598FeaB9ff6A090a7fAA9dF0F3B4df3F0c8D35FC"),"ether")' attach data/geth.ipc
geth --exec 'web3.fromWei(eth.getBalance("0xC49926C4124cEe1cbA0Ea94Ea31a6c12318df947"),"ether")' attach data/geth.ipc
geth --exec 'web3.fromWei(eth.getBalance("0x4a79c58CCf9d80353c02357F26D6f7b99fA9991e"),"ether")' attach data/geth.ipc


geth --exec 'web3.fromWei(eth.getBalance("0x2E93b701030fE32251C336fCbe388C89aED34712"),"ether")' attach data/geth.ipc






"enode://160ae2ec30b079ace074cfa28c73757f2493fd7afd807e0da901e68eff31ead944ff6eec7b854dfffffb1b4d4cc886829455e62f8422edd937694498544f9c40@13.230.35.234:33668",
"enode://d4718eb176c63c4752adeaf050df31b93a85de7e37e69b82fbe7a6f28f4e556c976a227250367a9e9ffd2e08b6d513448f7dff4969e4afaabb170b71eac2907b@35.73.127.28:33668",
"enode://bfe0bdaaeed5767f8a79204f18a45afc5a802eed6428b2c0aebf757f3a98276268090d5b6f1f839330f6b0cd397e22ad4f99affefd7a132421d43446c0a3f8a8@18.181.232.158:33668"
