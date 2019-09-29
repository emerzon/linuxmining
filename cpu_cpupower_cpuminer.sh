#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 ./bin/cpuminer-cpupower -t 8 --cpu-affinity 0xFF -a cpupower -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/cpupower.pool) -p c=${PAYOUT}
