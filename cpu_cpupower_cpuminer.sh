#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 ./bin/cpuminer-cpupower-intel -t 3 -a cpupower -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/cpupower.pool) -p c=${PAYOUT}
