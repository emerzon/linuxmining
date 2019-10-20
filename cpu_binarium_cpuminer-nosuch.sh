#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu ./bin/cpuminer-binarium-zen2 -a Binarium_hash_v1 -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/BIN.pool) -p c=${PAYOUT}
