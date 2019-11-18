#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 ./bin/cpuminer-dyn-zen2 -t 6 --hash-meter -a yescryptr32 -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/yescryptr32.pool) -p c=${PAYOUT}
