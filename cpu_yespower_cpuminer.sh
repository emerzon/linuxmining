#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu2 /home/egomes/linuxmining/bin/cpuminer-opt-b2582302 -a yespower -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/yespower.pool) -p c=${PAYOUT}
