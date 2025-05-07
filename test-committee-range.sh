#!/bin/bash

START_SLOT=7574780
END_SLOT=7574783
API_URL="http://localhost:5052"

for (( SLOT=$START_SLOT; SLOT<=$END_SLOT; SLOT++ )); do
  echo "Checking slot $SLOT..."

  # Get the block root
  ROOT=$(curl -s "$API_URL/eth/v1/beacon/headers/$SLOT" | jq -r '.data.root // empty')

  if [ -z "$ROOT" ]; then
    echo "  ❌ No block root found for slot $SLOT"
    continue
  fi

  # Check sync committee bootstrap availability
  STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$API_URL/eth/v1/beacon/light_client/bootstrap/$ROOT")

  if [ "$STATUS" == "200" ]; then
    echo "  ✅ Bootstrap available for root $ROOT"
  else
    echo "  ❌ Bootstrap NOT available for root $ROOT (status: $STATUS)"
  fi
done
