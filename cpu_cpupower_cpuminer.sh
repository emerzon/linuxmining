#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu ./bin/cpuminer-cpupower -t 16 -a cpupower -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/cpupower.pool) -p c=${PAYOUT}
