#!/bin/bash
screen -dmS cpu ./bin/cpuminer -t 8 --cpu-affinity 0xFF -a yespower -u $(< wallets/bell.address) -o stratum+tcp://$(< pools/bell.pool) -p x
