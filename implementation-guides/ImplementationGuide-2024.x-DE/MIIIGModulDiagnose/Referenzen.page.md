---
parent: 
---
## Referenzen

Die Modellierung des Datensatzes zum Modul DIAGNOSE enthält Referenzen zu folgenden Projekten:

* es orientiert sich zum einen zwecks Rückwärts- und Querkompatibilität am Format des [Datensatzes](https://www.g-drg.de/Datenlieferung_gem._21_KHEntgG/Dokumente_zur_Datenlieferung/Datensatzbeschreibung) gemäß §21 KHEntgG
* Zwecks Vorwärts- und internationaler Kompatibilität stellt zum anderen die [IPS](http://international-patient-summary.net/mediawiki/index.php?title=Main_Page) (International Patient Summary) ein Leitmodell dar. Die Abstimmung mit dem [Common Data Model](https://www.ohdsi.org/data-standardization/the-common-data-model/) von OMOP und OHDSI bleibt späteren Versionen überlassen.
* Auch der [Diagnosenleitfaden HL7 Deutschland](https://wiki.hl7.de/index.php?title=IG:Diagnoseleitfaden) wurde berücksichtigt.

Es wurden außerdem die [Kernspezifikation von HL7 FHIR](http://hl7.org/fhir/), hierunter die entsprechende Ressource [Condition](https://www.hl7.org/fhir/condition.html), und die bisherigen Arbeiten zu den Deutschen Basisprofilen in [STU3](https://simplifier.net/basisprofilde) und [R4](https://simplifier.net/basisprofil-de-r4) berücksichtigt. 

Die vorliegende Spezifikation wurde gestaltet auf Basis der Beschreibung des MII-Kerndatensatzes in der Version vom 10.3.2017 [(PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf), sowie der Datensatzbeschreibung in [ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-).


Als Klassifikationen und Terminologien sollen die ICD-10-GM, die Alpha-ID, die Orpha-Kennummern und SNOMED CT unterstützt werden. Die Nutzung der ICD-11-GM wird zum amtlich festgelegten Zeitpunkt zu berücksichtigen sein und muss bereits heute bei allen Planungen berücksichtigt werden..
