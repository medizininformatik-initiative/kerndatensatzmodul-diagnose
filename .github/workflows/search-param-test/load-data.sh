#!/bin/bash -e

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
BASE="http://localhost:8080/fhir"

for f in "$SCRIPT_DIR"/../../../fsh-generated/resources/Condition-*.json; do
  curl -sH 'Content-Type: application/fhir+json' -d @"$f" "$BASE/Condition"
done
