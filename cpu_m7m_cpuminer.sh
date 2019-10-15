#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu ./bin/cpuminer -a m7m -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/m7m.pool) -p c=${PAYOUT}
