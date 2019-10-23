#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 ./bin/cpuminer-yespower-zen2 -a yespower -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/yespower.pool) -p c=${PAYOUT}
