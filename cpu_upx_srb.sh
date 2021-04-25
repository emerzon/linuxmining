#!/bin/bash
screen -dmS cpu ./bin/srbminer --algorithm cryptonight_upx --pool $(< pools/upx.pool) --wallet $(< wallets/LTC.address)
