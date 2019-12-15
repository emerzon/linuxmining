#!/bin/bash
sudo modprobe msr
screen -dmS cpu sudo ./bin/xmrig --randomx-1gb-pages -a rx/loki -o $(< pools/LOKI.pool) -u $(< wallets/LOKI.address) -p x
