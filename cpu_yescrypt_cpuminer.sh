#!/bin/bash
PAYOUT="LTC"
screen -dmS cpu bin/cpuminer-opt-$(cat /proc/cpuinfo | grep flags | uniq | md5sum | cut -b 1-8) --hash-meter -a yescrypt -u $(< wallets/${PAYOUT}.address) -o stratum+tcp://$(< pools/yescrypt.pool) -p c=${PAYOUT},mc=BSTY
