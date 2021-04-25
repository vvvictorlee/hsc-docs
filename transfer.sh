#!/usr/bin/env bash
# /Users/lisheng/Downloads/hscchains/privatenetwork/geth --exec 'eth.sendTransaction({from:eth.accounts[1],to:eth.accounts[0],value:1000000000})' attach data/geth.ipc
/Users/lisheng/Downloads/hscchains/privatenetwork/geth --exec 'eth.sendTransaction({from:eth.accounts[1],to:eth.accounts[0],value:web3.toWei(4,"ether")})' attach data/geth.ipc

