Logical: MII_LM_Diagnose
Parent: Element
Id: mii-lm-diagnose
Title: "MII LM Diagnose"
Description: "Logische Repräsentation des Basismoduls Diagnose"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/LogicalModel/Diagnose"
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^date = "2024-12-09"
* . ^short = "Das Basismodul Diagnosen enthält Diagnosen als Behandlungsbegründungen und abrechnungsbasiertes Gliederungsmerkmal, z.B. als Hauptdiagnose, Nebendiagnose, Quartalsdiagnose etc."
* ICD10GMDiagnoseKodiert 0..1 BackboneElement "Im Bereich der administrativen und statistischen Auswertung wird die Diagnose mit Hilfe von Codiersystemen verschlüsselt. So wird z.B. bei der Abrechnung nach §301 und §295 SGB V die Codierung von Diagnosen mittels ICD-10-GM gesetzlich vorgeschrieben. Weitere Codiersysteme sind z.B. die Alpha-ID oder SNOMED CT. Die Kodierung einer Diagnose mittels verschiedener Codesysteme sollte möglich sein."
  * Diagnosecode 1..1 code "Diagnosecode ICD-10-GM" "Code ohne Zusatzkennzeichen"
  * Mehrfachkodierungskennzeichen 0..1 code "Mehrfachkodierungskennzeichen" "Mehrfachkodierungskennzeichen Kreuz-Stern-System und Ausrufezeichen (\"*\", \"†\", \"!\")."
  * Diagnosesicherheit 0..1 code "Zusatzkennzeichen für die Diagnosensicherhe" "Die Diagnosensicherheit, d.h. wie sicher die Diagnose im Einzelfall zu werten ist, kann unterschiedlich angegeben werden. Für Abrechnungszwecke in der ambulanten Versorgung muss obligatorisch ein Zusatzkennzeichen für die Diagnosensicherheit (A, G, V oder Z) angegeben werden, d. h. die Angabe ist obligatorisch. In der stationären Versorgung sind diese Zusatzkennzeichen für die Angabe der Diagnosensicherheit für Abrechnungszwecke dagegen nicht zulässig."
  * Seitenlokalisation 0..1 code "Zusatzkennzeichen Seite einer Erkrankung" "Zusatzkennzeichen der ICD-10 für die Seitigkeit einer Diagnose (R, L, B)"
* ALPHAIDKodiert 0..1 BackboneElement "Kodierung einer Diagnose mit Alpha-ID" "Kodierung einer Diagnose mit Alpha-ID"
  * Diagnosecode 1..1 code "Alpha-ID-Code" "Alpha-ID-Code"
* ORPHANETDiagnoseKodiert 0..1 BackboneElement "Für die Kodierung von Seltenen Krankheiten ist die Orpha-Kennnummer erforderlich." "Für die Kodierung von Seltenen Krankheiten ist die Orpha-Kennnummer erforderlich."
  * Diagnosecode 1..1 code "Orpha-Kennnummer" "Orpha-Kennnummer"
* SNOMEDDiagnoseKodiert 0..1 BackboneElement "Ermöglicht die Kodierung einer Diagnose mit SNOMED-CT" "Ermöglicht die Kodierung einer Diagnose mit SNOMED-CT"
  * Diagnosecode 1..1 code "SNOMED-CT Code" "SNOMED-CT Code"
* WeitereKodiersysteme 0..* BackboneElement "Bei Bedarf ist die Aufnahme weiterer Klassifikationen und Terminologien möglich." "Bei Bedarf ist die Aufnahme weiterer Klassifikationen und Terminologien möglich."
  * Diagnosecode 1..1 code "Code aus weiterem Kodiersystem" "Angabe des Codes aus weiterem Kodiersystem"
* Koerperstelle 0..* code "Körperstelle" "Über die Körperstelle kann angegeben werden, in welchem Bereich des Körpers eine Krankheit diagnostiziert wurde (Topografische Informatiomn)"
* Freitextbeschreibung 0..1 string "Diagnose im Klartext" "Diagnose im Klartext. Im Bereich der medizinischen Dokumentation sollte die Textbeschreibung obligatorisch sein. Bei der sekundären Übernahme einer kodierten Diagonse aus der Primärdokumentation kann eine Freitextbeschreibung fehlen."
* Diagnoseerlaeuterung 0..* string "Diagnoseerläuterung" "Damit soll dem Arzt die Möglichkeit gegeben werden, umfangreichere Angaben zusätzlich zu einer Diagnose abzufassen."
* KlinischerStatus 0..1 code "Klinischer Status" "aktiv, Rezidiv, Rückfall, inaktiv, Remission, geheilt"
* KlinischRelevanterZeitraum 0..1 BackboneElement "Klinisch relevanter Zeitraum" "Hier kann der Klinisch Relevante Zeitraum beziehungsweise die Lebensphase einer Erkrankung angegeben werden. Datumsangaben zu Diagnosen können in unterschiedlicher Präzision vorhanden sein."
  * Zeitraum 0..1 BackboneElement "klinisch relevanter Zeitraum" "Der Zeitraum wird durch zwei Datumsangaben beschrieben, das heißt, von wann bis wann ein Patient an der diagnostizierten Krankheit litt. Über den Zeitraum kann auch ausgedrückt werden, seit wann ein Patient an einer Krankheit leidet, indem nur das Startdatum des Zeitraums angegeben wird. Das Startdatum des Zeitraums kann abweichen von dem Diagnosedatum. Datumsangaben zu Diagnosen können in unterschiedlicher Präzision vorhanden sein."
    * von 0..1 dateTime "Startdatum" "Startdatum"
    * bis 0..1 dateTime "Enddatum" "Enddatum"
  * Lebensphase 0..* BackboneElement "Lebensphase" "Lebensphase, in der die Erkrankung aufgetreten ist"
    * von 0..1 code "In welcher Lebensphase die Krankheit began" "In welcher Lebensphase die Krankheit began"
    * bis 0..1 code "In welcher Lebensphase die Krankheit endete" "In welcher Lebensphase die Krankheit endete"
* Feststellungsdatum 0..1 date "Feststellungsdatum / Diagnosedatum" "Das Datum ist der Zeitpunkt, an dem eine Krankheit z. B. durch einen Arzt festgestellt wurde. Dies wird im Folgenden mit Diagnosedatum bezeichnet."
* Dokumentationsdatum 1..1 date "Dokumentationsdatum" "Das Datum ist der Zeitpunkt, an dem eine Krankheit z. B. durch einen Arzt dokumentiert wurde. Hinweis: Wenn zwischen Feststellung der Diagnose und Dokumentationsdatum nicht unterschieden werden muss, ist das Datum der Feststellung der Diagnose (Diagnosedatum) anzugeben."

Mapping: Diagnose-LogicalModel
Id: FHIR
Title: "Diagnose LogicalModel FHIR Mapping"
Source: MII_LM_Diagnose
* ICD10GMDiagnoseKodiert -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm')"
  * Diagnosecode -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
  * Mehrfachkodierungskennzeichen -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').extension('http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen').valueCoding.code"
  * Diagnosesicherheit -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').extension('http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit').valueCoding.code"
  * Seitenlokalisation -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').extension('http://fhir.de/StructureDefinition/seitenlokalisation').valueCoding.code"
* ALPHAIDKodiert -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/alpha-id')"
  * Diagnosecode -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/alpha-id').code"
* ORPHANETDiagnoseKodiert -> "Condition.code.coding.where(system='http://www.orpha.net')"
  * Diagnosecode -> "Condition.code.coding.where(system='http://www.orpha.net').code"
* SNOMEDDiagnoseKodiert -> "Condition.code.coding.where(system='http://snomed.info/sct')"
  * Diagnosecode -> "Condition.code.coding.where(system='http://snomed.info/sct').code"
* WeitereKodiersysteme -> "Condition.code.coding"
  * Diagnosecode -> "Condition.code.coding.code"
* Koerperstelle -> "Condition.bodySite"
* Freitextbeschreibung -> "Condition.code.text"
* Diagnoseerlaeuterung -> "Condition.note"
* KlinischerStatus -> "Condition.clinicalStatus"
* KlinischRelevanterZeitraum -> "Condition.onset[x]"
  * Zeitraum -> "Condition.onsetPeriod"
    * von -> "Condition.onsetPeriod.start"
    * bis -> "Condition.onsetPeriod.end"
  * Lebensphase
    * von -> "Condition.onsetPeriod.start.extension('http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept"
    * bis -> "Condition.onsetPeriod.end.extension('http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept"
* Feststellungsdatum -> "Condition.extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate').valueDateTime"
* Dokumentationsdatum -> "Condition.recordedDate"