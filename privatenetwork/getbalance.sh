#!/usr/bin/env bash
/Users/lisheng/Downloads/hscchains/privatenetwork/geth --exec 'eth.getBalance(eth.accounts[0])' attach data/geth.ipc
/Users/lisheng/Downloads/hscchains/privatenetwork/geth --exec 'eth.getBalance(eth.accounts[1])' attach data/geth.ipc
/Users/lisheng/Downloads/hscchains/privatenetwork/geth --exec 'web3.fromWei(eth.getBalance(eth.accounts[1]),"ether")' attach data/geth.ipc
