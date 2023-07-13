Instance: mii-exa-diagnose-multiple-kodierungen
InstanceOf: MII_PR_Diagnose_Condition
Usage: #example
* clinicalStatus = $condition-clinical#active
* code.coding[0].version = "2020"
* code.coding[=] = $icd-10-gm#H83.8 "Sonstige näher bezeichnete Krankheiten des Innenohres"
* code.coding[+] = $alpha-id#I125918
* code.coding[=].version = "2020"
* code.coding[+] = $orpha#420402 "Bogengangsdehiszenz-Syndrom"
* subject = Reference(Patient/12345)
* encounter = Reference(Encounter/12345)
* onsetPeriod.start = "2020-02-13T16:56:00+01:00"
* recordedDate = "2020-04-26T12:00:00+01:00"