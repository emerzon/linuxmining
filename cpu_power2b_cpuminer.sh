#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 ./bin/cpuminer-zen2 --cpu-affinity 0x00FFFF00 -t 6 --hash-meter -a power2b -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/power2b.pool) -p c=${PAYOUT}
