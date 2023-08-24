## Condition

This profile describes a diagnosis within the Medical Informatics Initiative.

Canonical: ```https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose, diff}}

---
<br>


| FHIR element | Explanation |
|--------------|-----------|
|Condition.id  | Must-support, but optional              |
|Condtion.meta              |  Must-support, but optional          |
| Condtion.clinicalStatus             | No restrictions, complete diagnostic workflow is supported. The element is optional because it is not recorded routinely. In addition, the status is not usually captured at discharge.|
| Condtion.code             | Min. 1 coded diagnosis has to be included. System can be selected from Alpha-ID, SNOMED CT, Orpahanet and ICD-10 GM.          |
| Condtion.code.coding:icd10-gm.extension             | Within the extensions "AusrufezeichenCode", "ManifestationsCode" and "Primaercode", the respective code components should be coded without respective special characters (e.g. "!", "+" or "*").|
| Condtion.bodySite             | In case this optional element is used, the body site has to be coded at least with one SNOMED-CT code. It is not necessary to specify the laterality here, this should be specified per Condition.code.coding:icd10-gm.extenison:site localization. This field is used to document additional information (beyond the code) about the manifestation.  |
| Condtion.subject             | The reference to the module person is always given.|
|Condition.encounter|It should be noted that in most cases this field should **not** be used to link the case and the diagnosis. This element is used to link the diagnosis to the encounter / contact in which the diagnosis is determined (always a contact with a concrete care center!). In general, the linking should be done via Encounter.diagnosis.|
| Condtion.onset[x]             | Following the IPS, it can be coded as Period or dateTime. Life phases can additionally be specified if exact times are unknown.|
| Condtion.recordedDate             | Serves for the chronological classification of the diagnosis (instead of the queries on the initial 'Abteilungsfall' of the determination of the diagnosis). |
| Condtion.note             | Additional explanation of the diagnosis. |

<br>

| FHIR element | Explanation |
|--------------|-----------|
|Encounter.period.start / Diagnose.encounter | It should be noted that the mapping of the logical data element "Feststellungsdatum" is not performed on the Condition resource but on the Encounter resource. Thus, the linking of the diagnosis SHOULD always be done to a facility contact (See [Case module](https://simplifier.net/guide/medizininformatikinitiative-modulfall-implementationguide/igmiikdsmodulfall)).|

<br>

| FHIR Element | Logical dataset  |
|--------------|-----------|
|Condition.code:icd-10gm         | Diagnose.ICD10GMDiagnoseKodiert         |
|Condition.code:icd-10gm.coding.code         |  Diagnose.ICD10GMDiagnoseKodiert.VollständigerDiagnosecode     |
|Condition.code:icd-10gm.coding:extension:Primaercode        |  Diagnose.ICD10GMDiagnoseKodiert.Ätiologiekode |
| Condition.code:icd-10gm.coding:extension:ManifestationsCode     |  Diagnose.ICD10GMDiagnoseKodiert.Manifestationskode |
| Condition.code:icd-10gm.coding:extension:AusrufezeichenCode        |  Diagnose.ICD10GMDiagnoseKodiert.Ausrufezeichenkode |
| Condition.code:icd-10gm.coding:extension:Diagnosesicherheit       |  Diagnose.ICD10GMDiagnoseKodiert.Diagnosesicherheit |
| Condition.code:icd-10gm.coding:extension:Seitenlokalisation        |  Diagnose.ICD10GMDiagnoseKodiert.Seitenlokalisation |
|Condition.code:alpha-id         |  Diagnose.ALPHAIDDiagnoseKodiert |
|Condition.code:alpha-id (coding.system, coding.value)        |  Diagnose.ALPHAIDDiagnoseKodiert.VollständigerDiagnosecode|
|Condition.code:orphanet        |  Diagnose.ORPHANETDiagnoseKodiert        |
| Condition.code:orphanet (coding.system, coding.value)     |  Diagnose.ORPHANETDiagnoseKodiert.VollständigerDiagnosecode        |
|Condition.code:sct         |  Diagnose.SNOMEDDiagnoseKodiert        |
|Condition.code:sct (coding.system, coding.value)         |  Diagnose.SNOMEDDiagnoseKodiert.VollständigerDiagnosecode        |
|Condition.code         |  Diagnose.WeitereKodiersysteme        |
|Condition.code (coding.system, coding.value)        |  Diagnose.WeitereKodesysteme.VollständigerDiagnosecode      |
|Condition.bodySite         |  Diagnose.Körperstelle        |
|Condition.code.text         |  Diagnose.Freitextbeschreibung |
|Condition.note         |  Diagnose.Diagnoseerläuterung |
|Condition.recordedDate         |  Diagnose.Dokumentationsdatum |
|Condition.clinicalStatus         |  Diagnose.KlinscherStatus        |
|Condition.onset[x]         |  Diagnose.KlinischRelevanterZeitraum |
|Condition.onsetPeriod         |  Diagnose.KlinischRelevanterZeitraum.Zeitraum |
|Condition.onsetPeriod.start         |  Diagnose.KlinischRelevanterZeitraum.Zeitraum.von-am |
|Condition.onsetPeriod.end         |  Diagnose.KlinischRelevanterZeitraum.Zeitraum.bis |
|n.A.        |  Diagnose.KlinischRelevanterZeitraum.Lebensphase |
|Condition.onsetPeriod.start.extension:lebensphase-start          |  Diagnose.KlinischRelevanterZeitraum.Lebensphase.von |
|Condition.onsetPeriod.end.extension:lebensphase-ende         |  Diagnose.KlinischRelevanterZeitraum.Lebensphase.bis |

<br>

| FHIR element | Logical dataset  |
|--------------|-----------|
|Encounter.period.start        | Diagnose.Feststellungsdatum         |

The invariants of the German Basic Profiles for the data type Profile ['Coding Profile for ICD-10-GM'](https://simplifier.net/guide/basisprofil-de-r4/Datentypen-Coding#Datentypen-ICD-10GM-Coding) and the [Extension for Diagnostic Certainty](https://simplifier.net/guide/basisprofil-de-r4/ExtensionsfrCondition) must be taken into account.




---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose, snapshot}}

---

**Examples**

ICD-10-GM & SNOMED CT:

{{json:medizininformatikinitiative-moduldiagnosen/Condition-example}}


ICD-10-GM diagnosis with 'Kreuz-Stern-System' and 'Zusatzkennzeichen':

{{json:medizininformatikinitiative-moduldiagnosen/exampleconditionmehrfachkodierungprimaercode}}

{{json:medizininformatikinitiative-moduldiagnosen/exampleconditionmehrfachkodierungsekundaercode}}


Alpha-ID and Orpha-Kennnummer:

{{json:medizininformatikinitiative-moduldiagnosen/exampleconditionmultiplekodierungen}}

