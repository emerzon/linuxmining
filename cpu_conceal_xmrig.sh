#!/bin/bash
screen -dmS cpu ./bin/xmrig -a cn/conceal -o $(< pools/conceal.pool) -u $(< wallets/conceal.address) -p x
