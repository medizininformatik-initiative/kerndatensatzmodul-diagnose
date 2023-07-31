Profile: MII_PR_Diagnose_Condition
Parent: Condition
Id: mii-pr-diagnose-condition
Title: "MII PR Diagnose Condition"
Description: "Dieses Profil beschreibt eine Diagnose der Medizininformatik Initiative"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $condition-related named ReferenzPrimaerdiagnose 0..1 MS
* clinicalStatus MS
* clinicalStatus ^min = 0
* code 1.. MS
* code.coding 1.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10-gm 0..1 MS and
    alpha-id 0..1 MS and
    sct 0..1 MS and
    orphanet 0..1 MS
* code.coding[icd10-gm] only CodingICD10GM
* code.coding[icd10-gm] from ICD10GM (required)
* code.coding[icd10-gm] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].system 1.. MS
* code.coding[icd10-gm].version 1.. MS
* code.coding[icd10-gm].code 1.. MS
* code.coding[alpha-id] only CodingAlphaID
* code.coding[alpha-id] from AlphaId (required)
* code.coding[alpha-id] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/alpha-id"
* code.coding[alpha-id].system 1.. MS
* code.coding[alpha-id].code 1.. MS
* code.coding[sct] from MII_VS_Diagnose_DiagnoseCodes_SNOMED (required)
* code.coding[sct] ^patternCoding.system = "http://snomed.info/sct"
* code.coding[sct].system 1.. MS
* code.coding[sct].code 1.. MS
* code.coding[orphanet] ^patternCoding.system = "http://www.orpha.net"
* code.coding[orphanet].system 1.. MS
* code.coding[orphanet].code 1.. MS
* bodySite MS
* bodySite.coding MS
* bodySite.coding ^slicing.discriminator.type = #pattern
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains snomed-ct 1..1 MS
* bodySite.coding[snomed-ct].system 1.. MS
* bodySite.coding[snomed-ct].system = "http://snomed.info/sct"
* bodySite.coding[snomed-ct].code 1..
* subject 1.. MS
* subject only $MII-Reference
* encounter only $MII-Reference
* encounter MS
* onset[x] only dateTime or Period
* onset[x] MS
* onset[x] ^slicing.discriminator.type = #type
* onset[x] ^slicing.discriminator.path = "$this"
* onset[x] ^slicing.rules = #closed
* onsetPeriod only Period
* onsetPeriod MS
* onsetPeriod ^sliceName = "onsetPeriod"
* onsetPeriod.start MS
* onsetPeriod.start.extension ^slicing.discriminator.type = #value
* onsetPeriod.start.extension ^slicing.discriminator.path = "url"
* onsetPeriod.start.extension ^slicing.rules = #open
* onsetPeriod.start.extension contains ExtensionLebensphase named lebensphase-von 0..1 MS
* onsetPeriod.end MS
* onsetPeriod.end.extension ^slicing.discriminator.type = #value
* onsetPeriod.end.extension ^slicing.discriminator.path = "url"
* onsetPeriod.end.extension ^slicing.rules = #open
* onsetPeriod.end.extension contains ExtensionLebensphase named lebensphase-bis 0..1 MS
* onsetDateTime only dateTime
* onsetDateTime MS
* onsetDateTime ^sliceName = "onsetDateTime"
* recordedDate 1.. MS
* note MS