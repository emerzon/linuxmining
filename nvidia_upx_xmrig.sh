#!/bin/bash
screen -dmS nvidia ./bin/xmrig-nvidia -o $(< pools/upx.pool) -u $(< wallets/LTC.address) -a cryptonight-upx/2 -p c=LTC
