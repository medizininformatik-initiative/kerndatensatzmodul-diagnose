---
parent: 
---

## Terminologien

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Zusätzlich zu internationalen Terminologien werden durch das Modul DIAGNOSE auch eigene CodeSystems definiert. Es sei drauf hingewiesen, dass CodeSystem ein implizites ValueSet enthalten können, welches der jeweiligen FHIR CodeSystem-Ressource zu entnehmen ist.|

Nach [§ 301](https://www.sozialgesetzbuch-sgb.de/sgbv/301.html) und [§ 295](https://www.sozialgesetzbuch-sgb.de/sgbv/295.html) SGB V ist die Kodierung bei der Abrechnung im deutschen Gesundheitswesen mit der Internationalen statistischen Klassifikation (ICD-10-GM) gesetzlich vorgeschrieben.

Da die ICD-10-GM aber für viele Fragenstellungen nicht aussagekräftig genug ist (siehe *Beschreibung Modul*), soll im Kerndatensatz die Kodierung auch zusätzlich mit anderen Terminologien und Klassifikationen (wie Alpha-ID, SNOMED CT und ORPHA-Kennnummern) ermöglicht werden.

### ValueSets

Es ist zu beachten, dass die nachfolgenden ValueSets keine Expansion beinhalten. Zur Verwendung für Validationszwecke MUSS diese per FHIR-Terminologieserver erstellt werden.

| diagnoses-sct | |
|--|--|
|Canonical ValueSet | https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct  |
| Binding | ([required](http://hl7.org/fhir/terminologies.html#required)) {{pagelink:DiagnoseCondition, text:Observation.code}}|
| Beschreibung | Das ValueSet 'diagnoses-sct' beinhaltet alle Codes welche für Condition.code:sct verwendet werden dürfen. |

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct}}

----------------------------------------------------

### CodesSystems

Das CodeSystem mit der Canonical http://fhir.de/CodeSystem/bfarm/icd-10-gm wird innerhalb des Moduls Diagnose, gemäß [Lizenzbedingungen](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html), publiziert.

--- 