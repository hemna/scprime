#!/bin/bash

SCPRIME_WALLET_PASSWORD=`cat /opt/scprime/data/wallet_seed.txt`
export SCPRIME_WALLET_PASSWORD

# Launch scprime
spd -M $SCPRIME_MODULES &
sleep 2
spc wallet unlock
tail -f /dev/null
