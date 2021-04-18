#!/usr/bin/env bash
/Users/lisheng/Downloads/hscchains/privatenetwork/geth \
--config /Users/lisheng/Downloads/hscchains/privatenetwork/config.toml  \
--logpath /Users/lisheng/Downloads/hscchains/privatenetwork/logs \
--syncmode full \
--gcmode archive \
--verbosity 3  >> /Users/lisheng/Downloads/hscchains/privatenetwork/logs/systemd_chain_console.out 2>&1
