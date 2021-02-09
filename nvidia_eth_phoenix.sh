#!/bin/bash
sudo nvidia-smi -pm 1
sudo nvidia-smi -i 0 -pl 185
sudo nvidia-smi -i 1 -pl 135
screen -dmS nvidia sudo ./bin/PhoenixMiner -pool $(<pools/ETH.pool) -wal $(<wallets/ETH.wallet) -worker $(hostname)  -epsw x -mode 1 -log 0 -mport 0 -etha 0 -ftime 55 -retrydelay 1 -tt 79 -tstop 89  -coin eth -straps 2 -nvmem 0

