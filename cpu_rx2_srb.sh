#!/bin/bash
screen -dmS cpu sudo ./bin/srbminer --algorithm rx2 --cpu-threads 12 --cpu-threads-intensity 2 --pool $(< pools/rx2.pool) --wallet $(< wallets/LTC.address)
