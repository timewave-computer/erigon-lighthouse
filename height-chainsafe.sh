curl -s https://lodestar-sepolia.chainsafe.io/eth/v1/node/syncing | jq '.data | {head_slot, sync_distance}'
