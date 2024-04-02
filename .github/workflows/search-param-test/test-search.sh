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

# Suchparameter: icd10gm-diagnosesicherheit
test "A54.4/A count" "$(search "code=$A54_4&icd10gm-diagnosesicherheit=$A")" "0"
test "A54.4/G count" "$(search "code=$A54_4&icd10gm-diagnosesicherheit=$G")" "1"

# Suchparameter: icd10gm-seitenlokalisation
test "A54.4/L count" "$(search "code=$A54_4&icd10gm-seitenlokalisation=$L")" "1"
test "A54.4/R count" "$(search "code=$A54_4&icd10gm-seitenlokalisation=$R")" "0"

# Suchparameter: icd10gm-mehrfachcodierung
test "A54.4/M count" "$(search "code=$A54_4&icd10gm-mehrfachcodierung=$M")" "0"
test "A54.4/E count" "$(search "code=$A54_4&icd10gm-mehrfachcodierung=$E")" "1"
test "M73.04/M count" "$(search "code=$M73_04&icd10gm-mehrfachcodierung=$M")" "1"
test "M73.04/E count" "$(search "code=$M73_04&icd10gm-mehrfachcodierung=$E")" "0"
