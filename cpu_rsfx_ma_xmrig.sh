#!/bin/bash
LD_PRELOAD=/usr/local/lib/libmimalloc.so
screen -dmS cpu sudo ./bin/xmrig-$(cat /proc/cpuinfo | grep flags | uniq | md5sum | cut -b 1-8) --randomx-1gb-pages --priority 0 -a rx/sfx --http-port 10000 -o $(< pools/rsfx.pool) -u $(< wallets/LTC.address) -p c=LTC
