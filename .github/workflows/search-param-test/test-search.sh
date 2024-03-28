#!/bin/bash -e

test() {
  if [ "$2" = "$3" ]; then
    echo "OK 👍: the $1 is $3"
  else
    echo "Fail 😞: the $1 is $2, expected $3"
    exit 1
  fi
}

BASE="http://localhost:8080/fhir"

search() {
  curl -sH 'Prefer: handling=strict' "$BASE/Condition?$1&_summary=count" | jq .total
}

A54_4="http://fhir.de/CodeSystem/bfarm/icd-10-gm|A54.4"
M73_04="http://fhir.de/CodeSystem/bfarm/icd-10-gm|M73.04"
A="https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|A"
G="https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|G"
L="https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION|L"
R="https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION|R"
M="http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen|*"
E="http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen|†"

# Suchparameter: code (zu Vergleichszwecken)
test "A54.4 count" "$(search "code=$A54_4")" "1"
test "M73.04 count" "$(search "code=$M73_04")" "1"

# Suchparameter: icd10gm-code-diagnosesicherheit
test "A54.4/A count" "$(search "icd10gm-code-diagnosesicherheit=$A54_4\$$A")" "0"
test "A54.4/G count" "$(search "icd10gm-code-diagnosesicherheit=$A54_4\$$G")" "1"

# Suchparameter: icd10gm-code-seitenlokalisation
test "A54.4/L count" "$(search "icd10gm-code-seitenlokalisation=$A54_4\$$L")" "1"
test "A54.4/R count" "$(search "icd10gm-code-seitenlokalisation=$A54_4\$$R")" "0"

# Suchparameter: icd10gm-code-mehrfachcodierung
test "A54.4/M count" "$(search "icd10gm-code-mehrfachcodierung=$A54_4\$$M")" "0"
test "A54.4/E count" "$(search "icd10gm-code-mehrfachcodierung=$A54_4\$$E")" "1"
test "M73.04/M count" "$(search "icd10gm-code-mehrfachcodierung=$M73_04\$$M")" "1"
test "M73.04/E count" "$(search "icd10gm-code-mehrfachcodierung=$M73_04\$$E")" "0"
