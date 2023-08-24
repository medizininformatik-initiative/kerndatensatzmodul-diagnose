## Terminologies

| Note |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | In addition to international terminologies, own CodeSystems are also defined. It should be noted that CodeSystems may contain an implicit ValueSet, which can be found in the respective FHIR CodeSystem resource.|

According to [§ 301](https://www.sozialgesetzbuch-sgb.de/sgbv/301.html) and [§ 295](https://www.sozialgesetzbuch-sgb.de/sgbv/295.html) SGB V, the coding in the German health care system with the International Statistical Classification (ICD-10-GM) is prescribed by law.

However, since ICD-10-GM is not meaningful enough for many questions (see *description of module*), the core data set allows coding with other terminologies and classifications (such as Alpha-ID, SNOMED CT and ORPHA code numbers).

### ValueSets

It should be noted that the following ValueSets do not include an expansion. To use them for validation purposes, they have to be created by a FHIR terminology server.

| diagnoses-sct | |
|--|--|
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct  |
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) {{pagelink:Condition, text:Observation.code}}|
| Description | The ValueSet 'diagnoses-sct' contains all codes which can be used for Condition.code:sct. |

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct}}

----------------------------------------------------

### CodesSystems

The CodeSystem with the Canonical http://fhir.de/CodeSystem/dimdi/icd-10-gm is published within the Diagnostics module, according to [License Terms](https://www.dimdi.de/static/.downloads/deutsch/downloadbedhilfe.pdf).