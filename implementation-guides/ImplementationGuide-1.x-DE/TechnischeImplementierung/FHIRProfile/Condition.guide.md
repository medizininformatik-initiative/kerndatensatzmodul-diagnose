### Condition

Dieses Profil beschreibt eine Diagnose in der Medizininformatik-Initiative.

Canonical: ```https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose```

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose, diff}}

<br>

| FHIR-Element | Erklärung |
|--------------|-----------|
|Condition.id  | Must-support, jedoch optional              |
|Condtion.meta              |  Must-support, jedoch optional          |
| Condtion.clinicalStatus             | Keine Einschränkungen, Kompletter Diagnose-Workflow wird unterstützt. Das Element ist optional, da es nicht routinemäßig erfasst wird. Zudem wird der Status bei der Entlassung meist nicht erfasst.|
| Condtion.code             | Min. 1 kodierte Diagnose muss enthalten sein. System frei aus Alpha-ID, SNOMED CT, Orpahanet und ICD-10 GM wählbar.          |
| Condtion.code.coding:icd10-gm.extension             | Innerhalb der Extensions "AusrufezeichenCode", "ManifestationsCode" und "Primaercode", sollten die jeweiligen Code-Bestandteile ohne jeweilige Sonderzeichen (z.B. "!", "+" oder "*") kodiert werden.|
| Condtion.bodySite             | Falls dieses optionale Element verwendet wird, muss die Körperstelle min. mit einem SNOMED-CT Code kodiert werden. Hierbei ist nicht die Lateralität anzugeben, diese sollte per Condition.code.coding:icd10-gm.extenison:Seitenlokalisation angegeben werden. Feld dient dazu zusätzliche Angaben (über den Code hinausgehend) zur Manifestation zu dokumentieren. |
| Condtion.subject             | Die Referenz zum Modul Person ist stets gegeben.|
|Condition.encounter|Es ist zu beachten, dass in den meisten Fällen dieses Feld **nicht** zur Verknüpfung des Falls und der Diagnose verwendet werden sollte. Dieses Element dient zur Verknüpfung der Diagnose mit dem Fall / Kontakt in dem die Diagnose festgestellt wird (immer ein Kontakt mit einer konkreten Versorgungsstelle!). Generell sollte die Verknüpfung über Encounter.diagnosis erfolgen.|
| Condtion.onset[x]             | In Anlehnung an die IPS als Period oder dateTime kodierbar. Lebensphasen können zusätzlich angegeben falls genaue Zeitpunkte nicht bekannt sind.|
| Condtion.recordedDate             | Dient der zeitlichen Einordnung der Diagnose (Anstelle der Abfragen auf des initialen Abteilungsfall der Feststellung der Diagnose) |
| Condtion.note             | Zusätzliche Erläuterung der Diagnose |

<br>

| FHIR-Element | Erklärung |
|--------------|-----------|
|Encounter.period.start / Diagnose.encounter | Es ist zu beachten, dass die Abbildung des logischen Datenelementes "Fesstellungsdatum" nicht auf die Condition-Ressource sondern auf die Encounter-Ressource erfolgt. Somit SOLLTE die Verknüpfung der Diagnose immer auf einen Einrichtungs-Kontakt erfolgen (Siehe [Modul Fall](https://simplifier.net/guide/medizininformatikinitiative-modulfall-implementationguide/igmiikdsmodulfall)).|

<br>

| FHIR Element | Logischer Datensatz |
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

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
|Encounter.period.start        | Diagnose.Feststellungsdatum         |

Es sind die Invarianten aus den Deutschen Basisprofilen zum Datentyp Profil ['Coding-Profil für ICD-10-GM'](https://simplifier.net/guide/basisprofil-de-r4/Datentypen-Coding#Datentypen-ICD-10GM-Coding) und der [Extension zur Diagnosesicherheit](https://simplifier.net/guide/basisprofil-de-r4/ExtensionsfrCondition) zu beachten.


---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose, snapshot}}

---

**Beispiele**

Beispiel ICD-10-GM & SNOMED CT:

{{json:Condition/ExampleCondition}}


Beispiel (ICD-10-GM Diagnose mit Kreuz-Stern-System und Zusatzkennzeichen):

{{json:Condition/ExampleConditionDuplicate2}}

Beispiel (Alpha-ID und Orpha-Kennnummer):

{{json:Condition/ExampleConditionDuplicate3}}



