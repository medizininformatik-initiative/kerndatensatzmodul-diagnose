#!/bin/bash -e

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

cat "$SCRIPT_DIR"/../../../fsh-generated/resources/SearchParameter-*.json |\
jq -n '{
  "resourceType": "Bundle",
  "type": "collection",
  "entry": [
    inputs | {
      "resource": .
    }
  ]
}' > "$SCRIPT_DIR/search-params.json"
