#!/bin/bash
screen -dmS cpu sudo ./bin/xmrig-$(cat /proc/cpuinfo | grep flags | uniq | md5sum | cut -b 1-8) --randomx-1gb-pages -a rx/sfx --http-port 10000 one -o $(< pools/rsfx.pool) -u $(< wallets/LTC.address) -p c=LTC
