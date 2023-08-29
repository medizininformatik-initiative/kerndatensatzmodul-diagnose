---
parent: 
topic: DiagnoseCondition
subject: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
---

### Condition

Dieses Profil beschreibt eine Diagnose in der Medizininformatik-Initiative.

**Mehrfachkodierung und Condition-Ressourcen**

Bei der Kombination von ICD-10-Codes mit dem Kreuz-Stern-System wird für jeden ICD-10-Code (Ätiologie, Manifestation, Zusatzinformation) eine Condition-Ressource instanziiert. Die Condition-Ressourcen der Sekundärdiagnosen (Manifestation, Zusatzinformation) nutzen die [Extension Condition Related](http://hl7.org/fhir/R4/extension-condition-related.html), um auf die Primärdiagnose (Ätiologie) zu referenzieren. Zusätzlich zu kombinierten ICD-10-Codes gemappte Alpha-IDs oder Orpha-Codes, werden nur in der Condition-Ressource der Primärdiagnose angegeben. Bei abweichenden Diagnosesicherheiten zwischen Primär- und Sekundärdiagnose muss sichergestellt werden, dass die Diagnosesicherheit der Primärcondition auf die assoziierte Alpha-ID zutrifft. Das Vorgehen wird anhand der [Beispielressourcen](#beispiel-2) exemplarisch für Alpha-ID `I97525` und ICD-10-GM `A54.4+` `M73.09*` dargestellt.


@```
  from 
    StructureDefinition 
  where 
    url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose' 
  select 
    Name: title, 
    Status: status,
    Canonical: url
```

---

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose}}
    </tab>
</tabs>

---

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
|Encounter.period.start / Diagnose.encounter | Es ist zu beachten, dass die Abbildung des logischen Datenelementes "Fesstellungsdatum" nicht auf die Condition-Ressource sondern auf die Encounter-Ressource erfolgt. Somit SOLLTE die Verknüpfung der Diagnose immer auf einen Einrichtungs-Kontakt erfolgen (Siehe [Modul Fall](https://simplifier.net/medizininformatikinitiative-modulfall)).|

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

Es sind die Invarianten aus den Deutschen Basisprofilen zum Datentyp Profil ['Coding-Profil für ICD-10-GM'](https://ig.fhir.de/basisprofile-de/1.4.0/Datentypen-Coding.html#Datentypen-ICD-10GM-Coding) und der [Extension zur Diagnosesicherheit](https://ig.fhir.de/basisprofile-de/1.4.0/ExtensionsfrCondition.html) zu beachten.

---

**Beispiele**

### Beispiel 1
ICD-10-GM & SNOMED CT:

{{json:fsh-generated/resources/Condition-mii-exa-diagnose-condition-minimal.json}}

### Beispiel 2
ICD-10-GM Diagnose mit Kreuz-Stern-System und Zusatzkennzeichen plus Alpha-ID:

{{json:fsh-generated/resources/Condition-mii-exa-diagnose-mehrfachkodierung-primaercode.json}}

{{json:fsh-generated/resources/Condition-mii-exa-diagnose-mehrfachkodierung-sekundaercode.json}}

### Beispiel 3 
Alpha-ID und Orpha-Kennnummer:

{{json:fsh-generated/resources/Condition-mii-exa-diagnose-multiple-kodierungen.json}}



