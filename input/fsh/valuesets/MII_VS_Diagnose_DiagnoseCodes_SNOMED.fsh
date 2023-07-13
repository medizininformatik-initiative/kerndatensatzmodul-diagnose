ValueSet: MII_VS_Diagnose_DiagnoseCodes_SNOMED
Id: mii-vs-diagnose-diagnosecodes-snomed
Title: "MII VS Diagnose Diagnose-Codes SNOMED"
Description: "Enthaelt alle SNOMED Clinical finding, Event und Situation with explicit context codes"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^experimental = true
* ^date = "2021-08-25"
* include codes from system SNOMED_CT where concept is-a #404684003
* include codes from system SNOMED_CT where concept is-a #272379006
* include codes from system SNOMED_CT where concept is-a #243796009