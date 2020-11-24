#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 ./bin/cpuminer-opt-$(cat /proc/cpuinfo | grep flags | uniq | md5sum | cut -b 1-8)  --cpu-affinity 0x7E0000 -t 6 -a yespower -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/yespower.pool) -p c=${PAYOUT},mc=PYRK
