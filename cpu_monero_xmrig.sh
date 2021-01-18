#!/bin/bash
screen -dmS cpu sudo ./bin/xmrig-$(cat /proc/cpuinfo | grep flags | uniq | md5sum | cut -b 1-8)  --randomx-1gb-pages --coin monero -o $(< pools/XMR.pool) -u $(< wallets/XMR.address) -p x
