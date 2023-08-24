Instance: mii-exa-diagnose-mehrfachkodierung-sekundaercode
InstanceOf: MII_PR_Diagnose_Condition
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-related"
* extension.valueReference = Reference(mii-exa-diagnose-mehrfachkodierung-primaercode)
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code.coding.extension.url = "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen"
* code.coding.extension.valueCoding = $icd-10-gm-mehrfachcodierungs-kennzeichen#*
* code.coding.version = "2020"
* code.coding = $icd-10-gm#M73.04 "Bursitis gonorrhoica[A54.4] : Hand"
* subject = Reference(Patient/12345)
* encounter = Reference(Patient/12345)
* onsetPeriod.start = "2019-09-26T12:45:00+01:00"
* onsetPeriod.end = "2020-03-25T13:00:00+01:00"
* recordedDate = "2020-01-05T12:53:00+01:00"