#!/bin/bash
screen -dmS cpu sudo ./bin/xmrig --randomx-1gb-pages --coin monero -o $(< pools/XMR.pool) -u $(< wallets/XMR.address) -p x
