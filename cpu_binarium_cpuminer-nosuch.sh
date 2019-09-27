#!/bin/bash
PAYOUT="BTC"
screen -dmS cpu ./bin/cpuminer-nosuch -t 16 -a binarium -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/BIN.pool) -p c=${PAYOUT}
