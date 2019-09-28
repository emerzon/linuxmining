#!/bin/bash
screen -dmS cpu ./bin/cpuminer -t 16 --cpu-affinity 0xFFFF -a yespower -u $(< wallets/bell.address) -o stratum+tcp://$(< pools/bell.pool) -p x
