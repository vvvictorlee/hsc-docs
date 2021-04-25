#!/usr/bin/env bash
/Users/lisheng/Downloads/hscchains/privatenetwork/geth --exec 'personal.unlockAccount(eth.accounts[0],"",0)' attach data/geth.ipc
/Users/lisheng/Downloads/hscchains/privatenetwork/geth --exec 'personal.unlockAccount(eth.accounts[1],"",0)' attach data/geth.ipc
/Users/lisheng/Downloads/hscchains/privatenetwork/geth --exec 'personal.unlockAccount(eth.accounts[4],"",0)' attach data/geth.ipc

