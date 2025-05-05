#!/bin/bash

./erigon/build/bin/erigon \
  --chain=sepolia \
  --datadir=/home/chef/Ethereum/data/erigon/ \
  --prune.mode=archive \
  --prune.distance=10000 \
  --http \
  --http.addr=0.0.0.0 \
  --http.port=8550 \
  --http.api=eth,web3,net,debug,trace,engine,erigon,txpool \
  --authrpc.addr=0.0.0.0 \
  --authrpc.port=8551 \
  --authrpc.vhosts=* \
  --authrpc.jwtsecret=/home/chef/Ethereum/jwt.hex \
  --externalcl \
  --private.api.addr=127.0.0.1:9090 \
  --webseed=https://snapshots.erigon.io/sepolia/
