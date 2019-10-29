#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 ./bin/cpuminer-zen2 -t 8 -a yespower -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/yespower.pool) -p c=${PAYOUT}
