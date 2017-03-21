#!/bin/bash

LOCAL_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
CUR_PATH=$(pwd)

cd $LOCAL_PATH
cd ..

BLOCKSTACK_TESTNET=1
VIRTUALCHAIN_WORKING_DIR=$LOCAL_PATH
BLOCKSTACK_DEBUG=1

python restvcapi.py $* > $LOCAL_PATH/vc.log &

cd $CUR_PATH