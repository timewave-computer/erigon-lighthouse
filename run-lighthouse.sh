#!/bin/bash

./lighthouse/lighthouse/lighthouse beacon_node \
  --network sepolia \
  --execution-endpoint http://127.0.0.1:8551 \
  --subscribe-all-subnets \
  --http \
  --http-address 0.0.0.0 \
  --http-port 5052 \
  --datadir /home/chef/Ethereum/data/lighthouse \
  --prune-payloads=false \
  --disable-deposit-contract-sync \
  --execution-jwt /home/chef/Ethereum/jwt.hex \
  --checkpoint-sync-url https://sepolia.beaconstate.info
