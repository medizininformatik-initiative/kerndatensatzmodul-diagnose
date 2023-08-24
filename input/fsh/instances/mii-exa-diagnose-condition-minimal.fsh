Instance: mii-exa-diagnose-condition-minimal
InstanceOf: MII_PR_Diagnose_Condition
Usage: #example
* clinicalStatus = $condition-clinical#active
* code.coding[0].version = "2020"
* code.coding[=] = $icd-10-gm#S50.0 "Prellung des Ellenbogens"
* code.coding[+] = $sct#91613004 "Contusion of elbow (disorder)"
* code.text = "Prellung des linken Ellenbogens"
* subject = Reference(Patient/12345)
* encounter = Reference(Encounter/12345)
* onsetPeriod.start = "2020-02-26T12:00:00+01:00"
* onsetPeriod.end = "2020-03-05T13:00:00+01:00"
* recordedDate = "2020-02-26T12:00:00+01:00"