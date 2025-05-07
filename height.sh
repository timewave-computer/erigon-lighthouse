curl -s http://localhost:5052/eth/v1/node/syncing | jq '.data | {head_slot, sync_distance}'
