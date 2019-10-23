#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 ./bin/cpuminer-cpupower-zen2 -t 6 --cpu-affinity=0x555 -a cpupower -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/cpupower.pool) -p c=${PAYOUT}
