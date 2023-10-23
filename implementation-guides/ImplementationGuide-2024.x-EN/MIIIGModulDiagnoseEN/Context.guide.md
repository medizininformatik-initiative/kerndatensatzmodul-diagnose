## Context in the overall project / references to other modules


Diagnoses represent the central entity in the description of health and disease in all use cases of the MII. See 'Scenarios description' for the description of the application of the DIAGNOSIS module in the individual consortia.

---

**Module PERSON**

Since the basis of the MII is the real-world data of the participating university hospitals, there is always a reference to the house-specific personal entity **PATIENT** in addition to the general personal reference.<br> 

**Module CASE**

The following aspects are taken into account for the inpatient and day-care context. In the process of hospital admission (including digital communication with the health insurers), initial diagnoses are recorded as a prerequisite for cost coverage by the health insurers. The category * Einweisungsdiagnose* describes the disease information of the admitting physician. The category * Aufnahmediagnose* reflects the (preliminary) assessment of the admitting hospital. 

Diagnosis information is also regularly noted during the process of care - for example, as *Fachabteilungshaupt-* and *Fachabteilungsnebendiagnosen*, or to justify service requests and therapeutic interventions, including medications. 

The almost final diagnosis documentation takes place in the process of hospital discharge. The diagnoses recorded in this process are reviewed by senior physicians and controllers, and (colored by billing rules) a distinction is made between *Krankenhaushaupt-* and * Krankenhausnebendiagnosen*. In this context, the German Coding Guidelines prohibit the inclusion of information on diagnoses in communications with payers if these have not generated any expenses during the inpatient stay. These diagnoses therefore do not occur in relation to the *Abrechnungsfall*. 

If the recorded but non-billing-compatible diagnoses are not deleted (which is forbidden in principle), they should be taken into account in the relations to the institution contacts and, if possible, to the department contacts. If possible, the distinction according to the diagnosis relation types with the characteristics *main diagnosis*, *secondary diagnosis* and *non-billing compatible* may be checked. 

In the future (at the latest with the introduction of ICD-11), a distinction will have to be made between the conditional terms *Einweisungs-* and * Aufnahmediagnose*, for which only individual diagnoses are flagged, and the characteristic "present-on-admission" (POA) for all diagnoses. It will be obligatory to include this yes/no indicator for each diagnosis that is assigned to a facility contact. Accordingly, a "present-on-discharge" ("POD") indicator should also be provided for occasional use for each care case diagnosis.

The FHIR profiles provide the following information. The relation to the diagnosis profile can be made from the case profile as well as from the diagnosis profile. However, these two alternatives are not equally important. An Encounter can refer to none up to several diagnoses, thereby each of these diagnosis references can get a so-called [*Diagnosis role*](http://hl7.org/fhir/valueset-diagnosis-role.html) assigned. This *role* is mainly to express whether the referenced diagnosis is a principal or a secondary diagnosis for the contact instance. The principal diagnosis is coded here as *Chief Complaint (CC)*, while the secondary diagnosis can be coded as *Comorbidity (CM)* (for more info see [DiagnosisRole](http://hl7.org/fhir/valueset-diagnosis-role.html)). 

When referencing from the diagnosis to the case, it is important to note that a diagnosis may refer to a case, however, it must be the case/contact in the context of which the diagnosis was also determined. In other words, a diagnosis cannot refer to a facility contact, but to the applicable *Abteilungs-/Versorgungsstellenkontakt.*.

**Other relations**

As a rule, there are no direct relations of diagnoses to care locations, procedures, medications, and laboratory findings in the available real-world data, although these naturally exist, for example, therapeutically, physiologically, or etiologically. 
The relation is generally established via the care context (*Einrichtungskontakt*, * Abteilungskontakt*) or via the time-related correlations.

The consideration of such references is reserved for the further development of the DIAGNOSIS module and its relations.

---

## **Outsourcing**

### *Diagnosis type*


The sort of diagnosis is indicated via the diagnosis type. The diagnosis type is specified in code form. 

The following diagnosis types are used for data transmission in accordance with §301 SGB V:


* *Aufnahmediagnose*
* *Einweisungsdiagnose*
* *Fachabteilungsdiagnose*
* *Nachfolgediagnose (mit anschließender Arbeitsunfähigkeit)*
* *Entlassungsdiagnose*
* *Fachabteilungszusatzdiagnose*
* *Überweisungsdiagnose*
* *Behandlungsdiagnose*

* Main and minor diagnoses (essentially defined in terms of billing) as well as primary and secondary diagnoses are mapped using additional attributes.

According to the [German Basic Profiles](https://simplifier.net/guide/basisprofil-de-r4/Ressourcen-DiagnosenCondition#Diagnose-Typen), the diagnosis type attribute is modeled as a property of the Encounter and is therefore not part of the diagnosis profile.

### Present-at-admission and Present-at-discharge

Occasionally, a diagnosis begins during an inpatient stay (e.g., in the case of a nosocomial infection or a fall). This can be distinguished by the yes/no characteristic "present on admission", as long as it has been recorded. The validity of a diagnosis beyond case closure can be expressed by the yes-no characteristic "present-at-discharge". 

This aspect is initially outsourced from the DIAGNOSIS module. However, with the 11th version of the ICD, *present-at-admission* and *present-at-discharge* will be introduced as additional indicators and should then be added to the module.