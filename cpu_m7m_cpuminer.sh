#!/bin/bash
PAYOUT="BTC"
screen -dmS cpu ./bin/cpuminer -a m7m -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/m7m.pool) -p c=${PAYOUT}
