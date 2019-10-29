#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu ./bin/cpuminer -t 6 --hash-meter -a power2b -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/power2b.pool) -p c=${PAYOUT}
