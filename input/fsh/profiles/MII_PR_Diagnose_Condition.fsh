Profile: MII_PR_Diagnose_Condition
Parent: Condition
Id: mii-pr-diagnose-condition
Title: "MII PR Diagnose Condition"
Description: "Dieses Profil beschreibt eine Diagnose der Medizininformatik Initiative"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"
* insert Translation(^title, de-DE, Diagnose)
* insert Translation(^title, en-US, Diagnosis)
* insert Translation(^description, de-DE, Eine klinische Diagnose der Patientin oder des Patienten.)
* insert Translation(^description, en-US, A clinical diagnosis of a patient.)
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2024-10-18"
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* extension contains 
    $condition-related named ReferenzPrimaerdiagnose 0..1 MS and
    $condition-assertedDate named Feststellungsdatum 0..1 MS
* insert Translation(extension[Feststellungsdatum] ^short, de-DE, Feststellungsdatum)
* insert Translation(extension[Feststellungsdatum] ^short, en-US, Asserted date)
* insert Translation(extension[Feststellungsdatum] ^definition, de-DE, Datum\, an dem die Diagnose erstmals festgestellt wurde)
* insert Translation(extension[Feststellungsdatum] ^definition, en-US, Date the condition was first asserted)
* clinicalStatus MS
* insert Translation(clinicalStatus ^short, de-DE, Klinischer Status)
* insert Translation(clinicalStatus ^short, en-US, Clinical status)
* insert Translation(clinicalStatus ^definition, de-DE, aktiv | Rezidiv | Rückfall | inaktiv | Remission | abgeklungen)
* insert Translation(clinicalStatus ^definition, en-US, active | recurrence | relapse | inactive | remission | resolved)
* insert Translation(verificationStatus ^short, de-DE, Verifizierungsstatus)
* insert Translation(verificationStatus ^short, en-US, Verification status)
* insert Translation(verificationStatus ^definition, de-DE, unbestätigt | vorläufig | differential | bestätigt | widerlegt | fehlerhafte Eingabe)
* insert Translation(verificationStatus ^definition, en-US, unconfirmed | provisional | differential | confirmed | refuted | entered-in-error)
* code 1.. MS
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Ein ICD-10-\, Alpha-ID-\, SNOMED-\, Orpha- oder anderer Code\, der die Diagnose identifiziert.)
* insert Translation(code ^definition, en-US, An ICD-10-\, Alpha-ID-\, SNOMED-\, Orpha- or other code that identifies the diagnosis.)
* code.coding 1.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10-gm 0..1 MS and
    alpha-id 0..1 MS and
    sct 0..1 MS and
    orphanet 0..1 MS //and
    //icd-o-3 0..1 MS
* code.coding[icd10-gm] only CodingICD10GM
* code.coding[icd10-gm] from ICD10GM (required)
* code.coding[icd10-gm] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].system 1.. MS
* code.coding[icd10-gm].version 1.. MS
* code.coding[icd10-gm].code 1.. MS
* code.coding[alpha-id] only CodingAlphaID
* code.coding[alpha-id] from $alpha-id-vs (required)
* code.coding[alpha-id] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/alpha-id"
* code.coding[alpha-id].system 1.. MS
* code.coding[alpha-id].code 1.. MS
* code.coding[sct] from MII_VS_Diagnose_DiagnoseCodes_SNOMED (required)
* code.coding[sct] ^patternCoding.system = "http://snomed.info/sct"
* code.coding[sct].system 1.. MS
* code.coding[sct].version MS
* code.coding[sct].code 1.. MS
* code.coding[orphanet] from mii-vs-diagnose-orphanet (required)
* code.coding[orphanet] ^patternCoding.system = "http://www.orpha.net"
* code.coding[orphanet].system 1.. MS
* code.coding[orphanet].code 1.. MS
//* code.coding[icd-o-3] ^short = "ICD-O-3 Morphologie"
//* code.coding[icd-o-3] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
//* code.coding[icd-o-3].system 1.. MS
//* code.coding[icd-o-3].version MS
//* code.coding[icd-o-3].code 1.. MS
* bodySite MS
* insert Translation(bodySite ^short, de-DE, Körperstelle)
* insert Translation(bodySite ^short, en-US, Body site)
* insert Translation(bodySite ^definition, de-DE, Körperstelle der Diagnose mittels SNOMED oder anderem Code.)
* insert Translation(bodySite ^definition, en-US, The body site of the diagnosis using SNOMED or other systems.)
* bodySite.coding MS
* bodySite.coding ^slicing.discriminator.type = #pattern
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains 
    snomed-ct 1..1 MS //and
    //icd-o-3 0..1 MS
* bodySite.coding[snomed-ct].system 1.. MS
* bodySite.coding[snomed-ct].system = "http://snomed.info/sct"
* bodySite.coding[snomed-ct].version MS
* bodySite.coding[snomed-ct].code 1.. MS
//* bodySite.coding[icd-o-3] ^short = "ICD-O-3 Topographie"
//* bodySite.coding[icd-o-3].system 1.. MS
//* bodySite.coding[icd-o-3].system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
//* bodySite.coding[icd-o-3].code 1.. MS 
* subject 1.. MS
* subject only $MII-Reference
* encounter only $MII-Reference
* encounter MS
* insert Translation(encounter ^short, de-DE, Fall oder Kontakt)
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, de-DE, Fall oder Kontakt\, bei dem die Diagnose festgestellt wurde.)
* insert Translation(encounter ^definition, en-US, Encounter during which the diagnosis was determined.)
* onset[x] only dateTime or Period
* onset[x] MS
* insert Translation(onset[x] ^short, de-DE, Beginn)
* insert Translation(onset[x] ^short, en-US, Onset)
* insert Translation(onset[x] ^definition, de-DE, Geschätztes oder tatsächliches Datum oder Zeitraum\, an dem die Erkrankung begonnen hat\, nach Meinung des Klinikers.)
* insert Translation(onset[x] ^definition, en-US, Estimated or actual date or date-time the condition began\, in the opinion of the clinician.)
* onsetPeriod MS
* onsetPeriod.start MS
* onsetPeriod.start.extension contains ExtensionLebensphase named lebensphase-von 0..1 MS
* onsetPeriod.end MS
* onsetPeriod.end.extension contains ExtensionLebensphase named lebensphase-bis 0..1 MS
* onsetDateTime MS
* recordedDate 1.. MS
* insert Translation(recordedDate ^short, de-DE, Aufzeichnungsdatum)
* insert Translation(recordedDate ^short, en-US, Recorded date)
* insert Translation(recordedDate ^definition, de-DE, Datum\, an dem die Diagnose erstmals dokumentiert wurde.)
* insert Translation(recordedDate ^definition, en-US, Date when the diagnosis was first recorded.)
* note MS
* insert Translation(note ^short, de-DE, Hinweis)
* insert Translation(note ^short, en-US, Note)
* insert Translation(note ^definition, de-DE, Zusätzliche Informationen zur Diagnose als Freitext.)
* insert Translation(note ^definition, en-US, Additional information about the diagnosis as free text.)

Mapping: FHIR-LogicalModel
Id: LogicalModel
Title: "FHIR-Profil zu LogicalModel Mapping"
Source: MII_PR_Diagnose_Condition
* clinicalStatus -> "KlinischerStatus"
* code.coding[icd10-gm] -> "ICD10GMDiagnoseKodiert"
* code.coding[icd10-gm].code -> "ICD10GMDiagnoseKodiert.Diagnosecode"
* code.coding[alpha-id] -> "ALPHAIDKodiert"
* code.coding[alpha-id].code -> "ALPHAIDKodiert.Diagnosecode"
* code.coding[sct] -> "SNOMEDDiagnoseKodiert"
* code.coding[sct].code -> "SNOMEDDiagnoseKodiert.Diagnosecode"
* code.coding[orphanet] -> "ORPHANETDiagnoseKodiert"
* code.coding[orphanet].code -> "ORPHANETDiagnoseKodiert.Diagnosecode"
* code.coding -> "WeitereKodiersysteme"
* code.coding.code -> "WeitereKodiersysteme.Diagnosecode"
* code.text -> "Freitextbeschreibung"
* bodySite -> "Koerperstelle"
* onset[x] -> "KlinischRelevanterZeitraum"
* onsetPeriod -> "KlinischRelevanterZeitraum.Zeitraum"
* onsetPeriod.start -> "KlinischRelevanterZeitraum.Zeitraum.von"
* onsetPeriod.start.extension[lebensphase-von].valueCodeableConcept -> "KlinischRelevanterZeitraum.Lebensphase.von"
* onsetPeriod.end -> "KlinischRelevanterZeitraum.Zeitraum.bis"
* onsetPeriod.end.extension[lebensphase-bis].valueCodeableConcept -> "KlinischRelevanterZeitraum.Lebensphase.bis"
* recordedDate -> "Dokumentationsdatum"
* extension[Feststellungsdatum] -> "Feststellungsdatum"
* note -> "Diagnoseerlaeuterung"