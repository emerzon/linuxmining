#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu bin/cpuminer-gr-$(cat /proc/cpuinfo | grep flags | uniq | md5sum | cut -b 1-8) --hash-meter -a ghostrider -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/gr.pool) -p c=${PAYOUT}
