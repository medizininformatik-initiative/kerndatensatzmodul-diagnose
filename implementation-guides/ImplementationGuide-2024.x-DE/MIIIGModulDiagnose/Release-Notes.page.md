## {{page-title}}

**Version: 2024.0.0**

- Die veröffentlichten FHIR-Packages verwenden nun [Calender Versioning (CalVer)](https://calver.org/) nach dem Schema YYYY.MINOR.PATCH. Damit wird ein Releasezyklus im Jahresrhythmus etabliert. Die Jahresversion (YYYY) zeigt das Jahr an, in dem das Kerndatensatzmodul angewendet wird. MINOR-Versionen werden bei Einführung neuer Funktionen, Erweiterungen oder substantieller Änderungen veröffentlicht. PATCH-Versionen umfassen Bugfixes oder textuelle Korrekturen.
- Die Benennung der Conformance-Ressourcen und Beispielinstanzen folgt nun einheitlichen [MII-Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII).
- Änderung der Dependency von [Version 0.9.13](https://simplifier.net/packages/de.basisprofil.r4/0.9.13) auf [Version 1.4.0](https://simplifier.net/packages/de.basisprofil.r4/1.4.0) der FHIR Basisprofile von HL7 Deutschland. 
- Beim Wechsel von Modul Diagnose Versionen 1.0 auf die Version 2.0 (2024.0.0) dieses Moduls ergeben sich durch die veränderte Dependency substantielle Änderungen (Breaking Change) am Profil {{pagelink: DiagnoseCondition, text: Diagnose (Condition), hint: MII_PR_Diagnose_Condition}}:
    - Bei doppel-/mehrfachkodierten ICD-Codes MUSS die Abbildung der Codebestandteile über separate Condition-Ressourcen erfolgen.
    - Die Verlinkung der Condition-Ressourcen MUSS über die [Extension: Condition Related](http://hl7.org/fhir/StructureDefinition/condition-related) erfolgen.
    - Ein gegebenenfalls vorhandenes Mehrfachkodierungskennzeichen ("*", "†", "!") MUSS vom ICD-Code getrennt in der [Extension: Mehrfachkodierungs-Kennzeichen bei ICD-10-GM](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656614) erfasst werden.
    - Die Canonical-URL für das CodeSystem ICD-10-GM wurde geändert von ~~`http://fhir.de/CodeSystem/dimdi/icd-10-gm`~~ zu `http://fhir.de/CodeSystem/bfarm/icd-10-gm`. Für ICD-10-GM Codes MUSS die aktuelle Canonical-URL im Element `Condition.code.coding.system` verwendet werden.
    - Siehe auch Beschreibung und Beispiele unter {{pagelink: DiagnoseCondition, text: Diagnose (Condition), hint: MII_PR_Diagnose_Condition}}.
- Im Profil {{pagelink: DiagnoseCondition, text: Diagnose (Condition), hint: MII_PR_Diagnose_Condition}} wurden die Elemente `Condition.code.coding` und `Condition.bodySite.coding` jeweils um ein optionales Slice für ICD-O-3 erweitert.
- Im Profil {{pagelink: DiagnoseCondition, text: Diagnose (Condition), hint: MII_PR_Diagnose_Condition}} unter `Condition.extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate')` ist neu eine Extension zur Angabe des Feststellungsdatums einer Diagnose.
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version `http://snomed.info/sct/900000000000207008/version/20230731`, um eine stabile [ValueSet-Expansion](http://hl7.org/fhir/R4/valueset.html#expansion) sicherzustellen.
- Die {{pagelink: FHIRProfile, text: Anforderungsdokumentation, hint: Anforderungsdokumentation}} verwendet nun Schlüsselwörter nach [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119).