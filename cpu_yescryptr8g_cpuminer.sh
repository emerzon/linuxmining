#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu cpuminer --hash-meter -a yescryptr8g -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/yescryptr8h.pool) -p c=${PAYOUT}
