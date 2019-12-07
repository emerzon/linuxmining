#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu bin/nheqminer -t $(nproc) -v -l $(< pools/VRSC.pool) -u $(< wallets/${PAYOUT}.address) -p c=${PAYOUT}
