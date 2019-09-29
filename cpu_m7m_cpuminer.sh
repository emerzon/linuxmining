#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu ./bin/cpuminer -t 31 -a m7m -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/m7m.pool) -p c=${PAYOUT}
