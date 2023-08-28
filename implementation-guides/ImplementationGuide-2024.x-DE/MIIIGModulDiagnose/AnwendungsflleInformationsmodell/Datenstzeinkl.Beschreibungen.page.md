---
parent: 
---
## Datensätze inkl. Beschreibungen

Die offizielle und abgenommene Version des Informationsmodels für das Modul DIAGNOSE findet sich auf [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=). 
Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/LogicalModel/Diagnose}}

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource



|Logischer Datensatz|Beschreibung|
|--------------------------------------------------|----------------------------------------------------------|
| Diagnose | Das Basismodul Diagnose enthält Diagnosen als Behandlungsbegründungen und abrechnungsbasiertes Gliederungsmerkmal, z.B. als Hauptdiagnose, Nebendiagnose, Quartalsdiagnose etc. |          
|Diagnose.ICD10GMDiagnoseKodiert|Im Bereich der administrativen und statistischen Auswertung wird die Diagnose mit Hilfe von Codiersystemen verschlüsselt. So wird z.B. bei der Abrechnung nach §301 und §295 SGB V die Codierung von Diagnosen mittels ICD-10 GM gesetzlich vorgeschrieben.|
|Diagnose.ICD10GMDiagnoseKodiert.VollständigerDiagnosecode| Primärcode mit ggf. Sekundärcodes, Codesystem und Katalogtext |
|Diagnose.ICD10GMDiagnoseKodiert.Ätiologiekode|Ätiologie (Auslöser), z. B. welcher Erreger. Der Code für die Ätiologie einer Erkrankung kann in der ICD-Codierung mit einem Kreuz (†) gekennzeichnet werden. |
|Diagnose.ICD10GMDiagnoseKodiert.Manifestationskode|Zusatzangabe zum Ätiologiecode ICD-10: Manifestationen. Der Code für die Organmanifestation einer Erkrankung wird in der ICD-Codierung mit einem Stern (*) gekennzeichnet. |
|Diagnose.ICD10GMDiagnoseKodiert.Ausrufezeichenkode|Diese Zusatzcodes dienen zur näheren Beschreibung einer Krankheit/Abgrenzung des Schweregrades. |
|Diagnose.ICD10GMDiagnoseKodiert.Diagnosesicherheit|Die Diagnosensicherheit, d.h. wie sicher die Diagnose im Einzelfall zu werten ist, kann unterschiedlich angegeben werden. Für Abrechnungszwecke in der ambulanten Versorgung muss obligatorisch ein Zusatzkennzeichen für die Diagnosensicherheit (A, G, V oder Z) angegeben werden, d. h. die Angabe ist obligatorisch. In der stationären Versorgung sind diese Zusatzkennzeichen für die Angabe der Diagnosensicherheit für Abrechnungszwecke dagegen nicht zulässig. |
|Diagnose.ICD10GMDiagnoseKodiert.Seitenlokalisation|Zur Spezifizierung von Diagnoseangaben ( ICD-10) dürfen die Zusatzkennzeichen für die Seitigkeit (R, L oder B) angegeben werden, d.h. die Angabe ist freiwillig; dies gilt für die stationäre und die ambulante Versorgung.|
|Diagnose.ALPHAIDDiagnoseKodiert|Die Kodierung einer Diagnose mittels verschiedener Kodesysteme sollte möglich sein. Hier mittels Alpha-ID|
|Diagnose.ALPHAIDDiagnoseKodiert.VollständigerDiagnosecode|Alpha-ID, Codesystem und Katalogtext |
|Diagnose.ORPHANETDiagnoseKodiert| Die Kodierung einer Diagnose mittels verschiedener Kodesysteme sollte möglich sein. Beispielsweise für die Kodierung von seltenen Krankheiten ist die Orpha-Kennnummer erforderlich.   |
|Diagnose.ORPHANETDiagnoseKodiert.VollständigerDiagnosecode|Orpha-Kennnummer, Codesystem und Krankheitsname |
|Diagnose.SNOMEDDiagnoseKodiert|Die Kodierung einer Diagnose mittels verschiedener Kodesysteme sollte möglich sein. Hier mittels SNOMED CT|
|Diagnose.SNOMEDDiagnoseKodiert.VollständigerDiagnosecode|SNOMED-CT Kode, Codesystem und PräferierterName |
|Diagnose.WeitereKodiersysteme| Bei Bedarf ist die Aufnahme weiterer Klassifikationen und Terminologien möglich.  |
|Diagnose.WeitereKodiersysteme.VollständigerDiagnosecode| Angabe des Codes, Codesystems und des Katalogtexts |
|Diagnose.Körperstelle| Über die Körperstelle kann angegeben werden, in welchem Bereich des Körpers eine Krankheit diagnostiziert wurde (Topographische Information).|
|Diagnose.Freitextbeschreibung| Diagnose im Klartext. Im Bereich der medizinischen Dokumentation sollte die Textbeschreibung obligatorisch sein.|
|Diagnose.Diagnoseerläuterung| Damit soll dem Arzt die Möglichkeit gegeben werden evt. nähere Angaben zu einer Diagnose in Form von Freitext zu machen.|
| Diagnose.Dokumentationsdatum| Das Datum ist der Zeitpunkt, an dem eine Krankheit z. B. durch einen Arzt dokumentiert wurde. Hinweis: Wenn zwischen Feststellung der Diagnose und Dokumentationsdatum nicht unterschieden werden muss, ist das Datum der Feststellung der Diagnose (Diagnosedatum) anzugeben.|
| Diagnose.KlinischerStatus| Angabe des Klinischen Status|
| Diagnose.KlinischRelevanterZeitraum              | Hier kann der  Klinisch Relevante Zeitraum beziehungsweise die Lebensphase einer Erkrankung angegeben werden. Datumsangaben zu Diagnosen können in unterschiedlicher Präzision vorhanden sein.|
| Diagnose.KlinischRelevanterZeitraum.Zeitraum| Der Zeitraum wird durch zwei Datumsangaben beschrieben, das heißt, von wann bis wann ein Patient an der diagnostizierten Krankheit litt. Über den Zeitraum kann auch ausgedrückt werden, seit wann ein Patient an einer Krankheit leidet, indem nur das Startdatum des Zeitraums angegeben wird. Das Startdatum des Zeitraums kann abweichen von dem Diagnosedatum. |
| Diagnose.KlinischRelevanterZeitraum.Zeitraum.von-am| Startdatum|
| Diagnose.KlinischRelevanterZeitraum.Zeitraum.bis| Enddatum|
| Diagnose.KlinischRelevanterZeitraum.Lebensphase| Angabe der Lebensphase einer Erkrankung |
| Diagnose.KlinischRelevanterZeitraum.Lebensphase.von| Startdatum|
| Diagnose.KlinischRelevanterZeitraum.Lebensphase.bis| Enddatum|
| Diagnose.Feststellungsdatum | Das Datum ist der Zeitpunkt, an dem eine Krankheit z. B. durch einen Arzt festgestellt wurde.|

