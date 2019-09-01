#!/bin/bash
PAYOUT="BTC"
screen -dmS cpu ./bin/cpuminer -t 6 -a yescryptr16 -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/eli.pool) -p c=${PAYOUT},zap=ELI
