#!/bin/bash
screen -dmS cpu ./bin/xmrig-upx-$(cat /proc/cpuinfo | grep flags | uniq | md5sum | cut -b 1-8) -o $(< pools/upx.pool) -u $(< wallets/LTC.address) -a cryptonight-upx/2 -p c=LTC
