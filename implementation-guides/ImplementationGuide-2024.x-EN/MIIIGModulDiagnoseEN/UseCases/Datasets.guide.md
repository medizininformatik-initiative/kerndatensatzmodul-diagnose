## Data sets including description

The official and accepted version of the information model for the DIAGNOSE module can be found on [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=). 
To standardize the representation, the information model was also modeled as FHIR Logical Model:

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/LogicalModel/Diagnose}}

It should be noted that the Logical Model is only intended to map the data elements and their description. The used data types and cardinalities shall not be regarded as obligatory. This is ultimately determined by the FHIR profiles. For each element within the Logical Model there is a 1:1 mapping to an element of a concrete FHIR resource.

|Logical data set|Description|
|--------------------------------------------------|----------------------------------------------------------|
| Diagnose |The basic module Diagnosis contains diagnoses which serve as treatment justifications and billing-based classification features, e.g. as primary diagnoses, secondary diagnoses, quarterly diagnoses etc. |          
|Diagnose.ICD10GMDiagnoseKodiert|In the field of administrative and statistical evaluation, the diagnosis is encoded using coding systems. The coding of diagnoses using ICD-10 GM, for example, is prescribed by law for billing according to §301 and §295 SGB V.|
|Diagnose.ICD10GMDiagnoseKodiert.VollständigerDiagnosecode| Primary code with secondary codes, if applicable, code system and catalog text |
|Diagnose.ICD10GMDiagnoseKodiert.Ätiologiekode|Etiology (cause), e.g., which pathogen. The code for the etiology of a disease can be marked with a cross (†) within the ICD coding. |
|Diagnose.ICD10GMDiagnoseKodiert.Manifestationskode|Additional note to the etiology code ICD-10: Manifestations. The code for the organ manifestation of a disease is marked with an asterisk (*) in the ICD coding. |
|Diagnose.ICD10GMDiagnoseKodiert.Ausrufezeichenkode|These additional codes allow a more detailed description of a disease/severity level. |
|Diagnose.ICD10GMDiagnoseKodiert.Diagnosesicherheit|The reliability of the diagnosis, i.e. how reliable the diagnosis is in individual cases, can be specified in different ways. For billing purposes in outpatient care, an additional indicator for the certainty of diagnosis (A, G, V or Z) has to be specified, i.e. the specification is mandatory. In inpatient care, however, these additional indicators for specifying the reliability of the diagnosis are not permitted for billing purposes. |
|Diagnose.ICD10GMDiagnoseKodiert.Seitenlokalisation|For the specification of diagnosis information ( ICD-10), the additional labels for laterality (R, L or B) may be specified. The specification is optional; this applies to inpatient and outpatient care.|
|Diagnose.ALPHAIDDiagnoseKodiert|Coding of a diagnosis using different code systems should be possible. In this case by using Alpha-ID|
|Diagnose.ALPHAIDDiagnoseKodiert.VollständigerDiagnosecode|Alpha-ID, code system and catalog text |
|Diagnose.ORPHANETDiagnoseKodiert| Coding of a diagnosis using different code systems should be possible. The ORPHAcodes are required for the coding of rare diseases.   |
|Diagnose.ORPHANETDiagnoseKodiert.VollständigerDiagnosecode|OROHAcode, code system and disease name |
|Diagnose.SNOMEDDiagnoseKodiert|It should be possible to encode a diagnosis using different code systems. In this case by using SNOMED CT|
|Diagnose.SNOMEDDiagnoseKodiert.VollständigerDiagnosecode|SNOMED-CT code, code system and preferred name |
|Diagnose.WeitereKodiersysteme| If required, the addition of further classifications and terminologies is possible.  |
|Diagnose.WeitereKodiersysteme.VollständigerDiagnosecode| Specification of the code, code system and catalog text |
|Diagnose.Körperstelle| The body site can be used to indicate in which area of the body a disease was diagnosed (topographical information).|
|Diagnose.Freitextbeschreibung| Diagnosis in plain text. In the area of medical documentation, the text description should be mandatory.|
|Diagnose.Diagnoseerläuterung| This allows the physician to provide more detailed information about a diagnosis in the form of free text.|
| Diagnose.Dokumentationsdatum| This date is the date on which a disease was documented, e.g. by a physician. Note: If it is not necessary to distinguish between the determination of the diagnosis and the documentation date, the date on which the diagnosis was determined (diagnosis date) has to be entered.|
| Diagnose.KlinischerStatus| Specification of the clinical status|
| Diagnose.KlinischRelevanterZeitraum              | The clinically relevant period or the life phase of a disease can be specified here. Date information on diagnoses may be available in varying degrees of precision.|
| Diagnose.KlinischRelevanterZeitraum.Zeitraum| The period is described by two dates, which is from when until when a patient suffered from the diagnosed disease. Through the period it is also possible to express since when a patient has been suffering from a disease by specifying only the start date of the period. The starting date of the period may differ from the diagnosis date. |
| Diagnose.KlinischRelevanterZeitraum.Zeitraum.von-am|  Start date|
| Diagnose.KlinischRelevanterZeitraum.Zeitraum.bis| End date|
| Diagnose.KlinischRelevanterZeitraum.Lebensphase| Specification of the life phase in which a disease manifests itself |
| Diagnose.KlinischRelevanterZeitraum.Lebensphase.von| Start date|
| Diagnose.KlinischRelevanterZeitraum.Lebensphase.bis| End date|
| Diagnose.Feststellungsdatum | This date is the date on which a disease was diagnosed, e.g. by a doctor.|

---
