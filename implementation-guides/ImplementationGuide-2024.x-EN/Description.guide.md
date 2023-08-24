## Description

{{render:implementation-guides/ImplementationGuide-Common/images/2_Abbildung_Diagnose_en.jpg}}

---

Diagnoses play a very important role in many different questions, therapy decisions and business processes in the german healthcare system - and thus as well in the application scenarios (use cases) of the Medical Informatics Initiative ([MII](https://www.medizininformatik-initiative.de)). 

The aim of supporting and enabling the use cases in the MII across institutions and consortia is at the forefront of the modeling of the Diagnosis module and the design of the FHIR profiles. As far as possible, but also as focused as necessary, other use case options are anticipated. 

The module diagnosis is designed to record the description of diseases and other characteristics of a person (as recorded in the [module person](https://simplifier.net/medizininformatikinitiative-modulperson)). Each person may have one or more diseases at a given time or during a period of time. These can be described by diagnoses with varying degrees of accuracy. 

Because of the MII priority of secondary use of real-world healthcare data for both care and research, the basic module diagnosis, which is intended to designate and provide diagnoses in a manner that is as provider-, sector-, and context-neutral as possible. For some use cases, the design of the module can only partially compensate the limitations regarding the requirements of reusability, time allocation and international interoperability of the digitally available data sources.

The authors of the module diagnosis attempt to fulfill their part in overcoming these limitations by setting milestones for documentation in the german healthcare system.

First and foremost, the use of [**additional catalogs**](#additionalcatalogs) is anticipated. For international - or special projects (e.g. rare diseases) the parallel availability of complementary diagnostic catalogs is required (see also under [ National and International Interoperability](#destinationLinkName)). Noteworthy are: 
* the [Orpha identification numbers](https://www.orpha.net/consor/cgi-bin/Disease.php?lng=DE) for rare diseases. 
* the [SNOMED CT](http://www.snomed.org/snomed-ct/five-step-briefing) nomenclature (Systematized Nomenclature of Human and Veterinary Medicine - Clinical Terms) for a wide range of applications with international interoperability
* the [Alpha-ID](https://www.dimdi.de/dynamic/de/klassifikationen/downloads/?dir=alpha-id/), which is based on the Alphabetical Dictionary for ICD-10-GM.

Immediately, the 11th revision of the ICD must also be taken into account, whose establishment is being prepared by the [BMG](https://www.bundesgesundheitsministerium.de) authorities [DIMDI](https://www.dimdi.de/dynamic/de/startseite) and [BfArM](https://www.bfarm.de/DE/Home/home_node.html).

For example, the use of the ICD-O, which allows a more differentiated description of types of cancer, is also intended. However, this is not addressed in the basic module diagnosis, but in the extension module oncology. Furthermore, the use of symptom and phenotype terminologies such as the Human Phenotype Ontology will be standardized. However, this is also not implemented in the basic module diagnosis, but in an extension module symptome and clinical phenotype.

---
## Mapping of the module diagnosis in ART-DECOR 
The module provides the following features of a diagnosis that are currently required or will be required in the near future:

[{{render:implementation-guides/ImplementationGuide-Common/images/BasismodulDiagnose.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

---

## Properties of the module diagnosis 

The MII core data set is designed to enable all use cases of the MII across institutions and consortia. Its implementation requires a significant commitment of resources. This effort must be justified by advantages over more easily available alternatives that fulfill the **FAIR principles** of "**F**indable, **A**ccessible, **I**nteroperable, **R**eusable" at a lower level.


In this regard, the MII core data set can be interpreted as a refinement and as a competing offering to the data set according to § 21 KHEntgG. Therefore, the more detailed presentation of the features is structured by reflecting the dimensions that have been specified as orientation aspects for the design in the first description of the MII core data set from March 10, 2017 [(PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf):

1. [National and international interoperability](#NatIntIOP)
2. [Reusability](#Mehrfachnutzbarkeit)
3. [Time allocation](#ZeitlicheZuordnung)


<a id="NatIntIOP"></a>
### **1. National and international interoperability**

One approach to interoperability is to synchronize the MII core data set with the information model of the important FHIR reference named International Patient Summary ([IPS](https://international-patient-summary.net/)) and the MIOs (*Medizinische Informationsobjekte*) of the KBV (*Kassenärztliche Bundesvereinigung*).

* **National interoperability** refers to the ability to interoperate within Germany. This is guaranteed, for example, through the data set according to § 21 KHEntgG ("P21") in the communication of around 2.000 German hospitals with around 150 German health insurance companies - especially for the more or less flat-rate service remuneration. Due to the focus on billing aspects and the restriction to the ICD-10-GM classification, hospitals and other health care facilities can only interact on a rough basis. A major goal of the MII core data set - as described below - is to enable a more differentiated, requirements-based collaboration in care and research. In this context, a distinction from international interoperability is not appropriate.

* **International interoperability** refers to the ability to interact as seamlessly as possible beyond German borders. This is especially necessary in international research and with the increasing number of special and specialized questions. For the field of rare diseases this is self-evident; however, the increasing differentiation of observations and understanding of cause-and-effect relationships is ultimately encountered in every discipline. International interoperability is also required if digitally stored knowledge generated in one or more countries needs to be automatically verified and used in foreign contexts.

In the first step, this requires diagnoses to be reasonably and uniformly categorized, classified, and coded at each location using internationally harmonized classifications and/or terminologies. In the second step, the diagnosis details in combination with other individual data have to be made available for "sharing" in accordance with data protection and FAIR principles. 

### [ICD-10-GM](#ICD)

The International Classification of Diseases and Related Health Conditions (ICD) in its 10th revision (=> ICD-10) has been largely approved for many questions. 
Thus, according to [§ 301](https://www.sozialgesetzbuch-sgb.de/sgbv/301.html) and [§ 295](https://www.sozialgesetzbuch-sgb.de/sgbv/295.html) SGB V, the specification of diagnoses and their coding with the version ICD-10-GM (German Modification) published annually by the BMG authority [DIMDI](https://www.dimdi.de/dynamic/de/startseite) or, since 2020, by the *Bundesamt für Arzneimittel und Medizinprodukte* (BfArM) is legally required for inpatient and outpatient billing. It is based on the ICD-10 of the [WHO](https://www.who.int). As a result of these and other law regulations, the coding of diagnoses in the German healthcare system is dominated by the ICD-10-GM at almost every point.

For many purposes, classification and coding with ICD-10-GM is appropriate (for example, death certificates for cause-of-death statistics, certificates of incapacity for work, billing records for rewarding performance).
However, for many other issues, it is **not powerful** enough and thus not sufficient (see, for example, [Coding of Rare Diseases](https://www.bundesgesundheitsministerium.de/fileadmin/Dateien/5_Publikationen/Gesundheit/Berichte/Kodierung-von-Seltenen-Erkrankungen_Kurzbericht.pdf)). 

--- 
For this reason, the core data set will also allow **additional** categorization and coding of diagnoses using other terminologies and classifications:

### [SNOMED CT](#SNOMEDCT)
This includes the integration of the most comprehensive medical terminology, the Systematic Nomenclature of Medicine - Clinical Terms, SNOMED CT, into the canon of code systems. Thus, the MII Core Data Set follows the resolutions of the MII National Steering Committee, the support of the BMBF, and the efforts of the * Patientendatenschutzgesetzes* from the BMG to establish this internationally used nomenclature in Germany.

### [Orpha-Kennnummern](#Orpha)
Adding the ORPHAcodes to the canon of code systems complies with the recommendations of the *Nationalen Aktionsbündnisses für Menschen mit Seltenen Erkrankungen*, in which the BMBF and BMG are involved, regarding the [Coding of Rare Diseases]. 
This supports the objectives of the cross-consortia collaborative project CORD-MI and corresponds with the decision of the *Gemeinsamen Bundesausschusses* (GBA) of the self-government in the German healthcare system, which links the remuneration of the centers for rare diseases in university hospitals, of which approximately two thirds are organized in CORD-MI.

### [Alpha-ID](#Alpha)
Likewise, the inclusion of the Alpha-ID as an MII code system is in line with the request of the GBA, the BMG and the DIMDI for the field of rare diseases.

--- 


<a id="Mehrfachnutzbarkeit"></a>
### **2. Reusability**

Reusability refers to the goal of being able to use data technically for different purposes without significant transformations, insofar as this is permitted by data protection rules. Secondary use of patient data collected primarily for health care (including, in particular, diagnostic information) in a research context is a core aim of the MII.

In the data sources on which the MII is initially based, the purpose of 
diagnoses are primarily used for justifying treatments, billing, and fee-for-service purposes. Even these basic applications span a very wide range and present various challenges for classification and coding of diseases and related health conditions. 
In addition, diagnoses should differentiate disease and health states in present and upcoming application scenarios, whereby demanding requirements of biomedical research, socio-medical research, epidemiology, quality management, health care monitoring and health care planning across institution, sector, country and time boundaries have to be considered. 

The synchronization of the MII core data set with the information models of the International Patient Summary and the EPA project (Electronic Patient Record) of the KBV (National Association of Statutory Health Insurance Physicians), which is referred to as access to interoperality, also helps to ensure reusability.
It should be noted that both information models of the IPS and the EPA do not recognize cases. In both implementations, diagnoses are documented without cases. The MII core data set follows the IPS and the EPA in that the DIAGNOSIS and PERSON modules correspond directly with each other. 

However, in parallel, the DIAGNOSIS module in the MII core data set also corresponds with the [**CASE** module](https://simplifier.net/MedizininformatikInitiative-ModulFall/), which provides the reference to care in healthcare facilities. Since the main source of medical data in the MII are the Clinic Information Systems and Clinical Workplace Systems, it is in principle possible to create logical **relationships between cases and diagnoses**. These are found in the case-diagnosis relations of the CASE module. However, the difficulties, such as the distinction between the case variants *Einrichtungskontakt* and *Versorgungsstellenkontakt* with clearly divergent requirements for the case-diagnosis relations, can be found in the details.

The direct correspondence of the DIAGNOSIS and PERSON modules shall express that diagnoses also exist without them being found in inpatient or outpatient healthcare facilities and are differentiated into major, minor and non-relevant diagnoses for organizational and billing purposes and before being classified and coded using the ICD-10-GM.

The goal of provider, sector and time independence of the DIAGNOSIS module as a step towards reusability cannot be fully achieved not only for the definitely different, sector-dependent *Abrechnungsfälle* (FHIR category *Account*), but also for the *Versorgungskontakte* (FHIR category *Encounter*). 

Starting with the fact that the common catalog, the [ICD-10-GM](https://www.dimdi.de/dynamic/de/klassifikationen/icd/icd-10-gm/), is not primarily administered according to medical requirements - for example, the identification of common as well as rare diseases - but according to statistical and billing priorities. It should be noted that the ICD-10-GM, as the main catalog of the DIAGNOSIS module, is updated annually, so that we are de facto confronted with **annually changing catalogs** (possibly with changes in the meaning of some four- and five-digit codes). Thus, only the triple of diagnosis name, diagnosis code and diagnosis catalog remains unambiguous. Time series spanning year boundaries are therefore only feasible for the three-digit stable categories, but not for the four- and five-digit subcategories.

The dominant role of billing requirements and the German Coding Guidelines, which are based on their paradigms, in documentation in hospital information systems has already been mentioned above as a further challenge in the reuse of diagnosis data from the context of care. These (supposed) billing requirements pushed the first wave of digitization in German hospitals around the turn of the millennium and, from a medical perspective, led to partial digitalization failure. The resulting contradictions have to be compensated as best as possible in the core data set of the MII by the different relations of diagnoses to *Versorgungsstellenkontakten* and * Einrichtungskontakte* to diagnoses - which will require a longer learning and continuous improvement process.
As an example, selected inconsistencies between diagnoses in *Abrechnungsfällen* and in * Einrichtungskontakten* (see [module  CASE](https://simplifier.net/MedizininformatikInitiative-ModulFall/)) can be mentioned, even if both case variants describe an inherently identical constellation (e.g., inpatient stay between admission and discharge):

* *Abrechnungsfällen* may only be assigned diagnoses that have caused effort in the inpatient setting (see [German Coding Guidelines](https://www.g-drg.de/G-DRG-System_2020/Kodierrichtlinien/Deutsche_Kodierrichtlinien_2020)).


* The *Einrichtungskontakten*, on the other hand, should be assigned all observed diagnoses, even for untreated diseases. They may be relevant for quality assurance and for the scientific context. 

* For billing purposes and frequency-oriented evaluations, it regularly seems sensible to use a "statistical" classification such as the ICD-10-GM with its limited number of approximately 13,000 entities, regardless of the fact that even four- or five-digit subcategories often combine very different clinical pictures.

* More nuanced nomenclatures and terminologies are needed for differentiated research and medical digitalized care support if individual treatment needs are to be adequately addressed. For example, the ICD code for Other sphingolipidoses (E75.2) hides a broad spectrum of diseases such as Fabry disease, Gaucher disease, Krabbe disease, Farber disease ... with different care requirements, and a few topologically differentiated variants of "Malignant neoplasm of the mammary gland" (C50.1 to C50.9) conceal many dozens of etiologies and morphologies with a wide range of therapeutic approaches.

Although the ICD catalog, as the most widely used diagnostic catalog, is updated annually, it is incomplete with respect to requirements in some areas (rare diseases, oncology, psychiatry, international comparisons). 

Reusability has to focus on **Versorgungskontakten** in the basic modules and the extension modules of the MII core data set, without ignoring that they are often built on billing-oriented documentation. 

The DIAGNOSIS module cannot avoid allowing several code systems (nomenclatures, terminologies, classifications) in parallel. In this sense, the DIAGNOSIS module in the MII core data set continues to build on the use of the ICD-10-GM, since on the one hand this represents the classification in general use in very many, especially administrative, applications. However, the module also allows for the adoption of free-text designations and opens up the use of supplementary code systems such as SNOMED CT, ORPHAcodes and ICD-11. 

However, as already mentioned, these dimensions of the data model can only be seen as signposts for better documentation and digital transformation in the German healthcare system. Indeed, the design of the information model does not automatically lead to its filling. For example, only a limited number of ICD codes can be uniquely converted into Orpha code numbers and SNOMED-CT terms. As a rule, an adaptation of the documentation processes is necessary, which can only be roughly anticipated.

---

<a id="ZeitlicheZuordnung"></a>
### **3. Time allocation**

As a further need for further development, the initial paper on the MII core data set of March 2017 indicated the need for better "temporalization of diagnoses". In the data set according to §21 KHentgG ("P21"), which is used by the MII core data set to locate the potential for improvement, the temporal orientation is limited to the assignment of the diagnosis list to a case, which only knows an admission and a discharge date as time markers. In P21, however, it remains open whether the diagnosis was already present at the time of admission or was only acquired in the hospital (e.g., fall, infection, pressure ulcer) and whether it can be considered cured at the time of discharge, whether relief was achieved in a chronic process, or whether treatment failed altogether.

The information model of the MII core data set adopts this optimizable approach in its minimum version, but also opens up further options for temporal allocation such as documentation date, determination date, clinically relevant period and life phase - i.e. also the identification of "present-at-admission" and "present-at-discharge". However, it is not yet possible to estimate how extensively these options can be used on the basis of the existing primary documentation or how quickly digitization in the German healthcare system will take account of the underlying requirements. 

### Link to time-defined cases

As mentioned earlier, although not explicitly identified in the ART-DECOR model, linkage to cases is a basal temporal determination for diagnoses. 
As mentioned under reusability, a * Einrichtungskontakt* as well as the *Abteilungskontakte* and *Versorgungsstellenkontakte* contained therein and a *Abrechnungsfall* are practically always linked to at least one diagnosis.
In both case variants - *Einrichtungskontakt* and *Abrechnungsfall* - there is a start date (usually corresponding to the date of admission to a hospital) and an end date (usually the date of discharge from the hospital), which are often, but not always, congruent across case variants (see [CASE module](https://simplifier.net/MedizininformatikInitiative-ModulFall/)). <br> 

However, none of the case start dates should per se be equated with the start date of the disease. Likewise, none of the end dates must be associated with the end of the disease. In order to be able to clarify this circumstance, it is planned to optionally set up the possibility of an "existing-at-admission" and an "existing-at-discharge" indicator in the CASE-DIAGNOSIS relation (not shown in the data model). 

In addition to the case reference (which is not explicitly shown), further information on diagnoses should provide information on their temporality:

#### Documentation date 

The date when the disease was documented by a physician should be given here. 

#### Determination date

In contrast to the documentation date, the determination date is the date on which a disease was determined (for example, by a physician). The determination date can also be referred to synonymously as the diagnosis date.

#### Clinically relevant period

Independent of the case reference, it is possible in the DIAGNOSIS module to consider the *clinically relevant period* or *validity period* of a disease, provided that a corresponding source is available. This characteristic describes the period from when to when a patient suffered from a disease. It should be noted that the start date (here *from/on*) does not have to be the same as the diagnosis date. 

The specification of the validity period is particularly useful for acute and curable diseases with a datable beginning of the disease and an obvious end of the disease.

[{{render:implementation-guides/ImplementationGuide-Common/images/KlinRelvZeitNeu.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

#### Life phase

In addition to a calendrical *period*, it is possible to specify the *life phase* at which a disease was/is present. This can be used, for example, to indicate that a person has already had a disease as an infant. The corresponding value set is currently still being developed.

The specification of the end date (*to*) is not obligatory for both entries, because in the case of chronic diseases (including congenital diseases) it is often not possible to determine the end of the disease and the disease persists beyond the care phase. 

#### Clinical status

As a further characteristic, the information model allows the addition of a clinical status (active, not active) in conjunction with a defined time point. This information is more commonly used in the outpatient sector.

---


---

### **Further characteristics in detail** 

As explained above, in order to improve interoperability and multiple usability, the basic module DIAGNOSIS provides separate and parallel coding of diagnoses using the following four coding systems: 

* ICD-10-GM
* Alpha-ID 
* ORPHAcodes
* SNOMED CT

These code systems can be used separately or in relation to a common free text, as required. None of the code systems is generally prescribed, but coding using ICD-10 is prescribed in many places - for example, when billing for services and when implementing cause-of-death statistics.

A logical-deterministic linking of the coding systems (for example, using Alpha-ID) has not yet been provided for in the information model and will probably have to be implemented more programmatically. The GBA has suggested something similar in its resolution on Section 136c (5) SGB V of December 5, 2019, on the financing of centers with special tasks (e.g., centers for rare diseases).

Each of the code systems has special features - especially for the use of the common systems there are various regulations. 

---

<a id="ICD"></a>
#### ICD-10-GM Diagnosis coded


[{{render:implementation-guides/ImplementationGuide-Common/images/ICDNeu.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

#### Complete diagnosis code for ICD coding

The *complete diagnosis code* is a triple that combines the **diagnosis code**, the corresponding **code system** (including the corresponding version number or year designation of the ICD-10-GM) and the **catalog text** of the diagnosis code:

* The diagnosis code indicates the primary code(s). 
However, some diagnostic findings require a special type of double or multiple coding. If this is the case, the diagnosis code includes all codes.

* This year, the code system is ICD-10-GM 2020. Due to annually changing catalogs, the meaning of some codes may change. Therefore, the corresponding version must also be taken into account here as well.



<br>
Since ICD-10 classifies primarily according to the etiology of a disease, important information (such as the manifestation of a disease) can be lost. For the etiology and manifestation coding, the so-called *Kreuz-Stern-System* is provided. In this system, one code stands for the etiology, the following one describes the manifestation of a disease. The *Kreuz-Stern-System* should not be used for diseases that have no etiological connection. 

#### *Ätiologiekode*

The *Ätiologiekode* of a disease is marked with a cross (†) within the ICD coding. Unlike the secondary diagnosis keys, the *Ätiologiekode* can also be used alone. In the *Kreuz-Stern-System*, the cross code is the primary code.

<br>

#### **Secondary diagnosis keys:** 

In addition to the *Ätiologiekode*, a diagnosis can be coded with one or more secondary diagnosis keys. The secondary diagnosis keys cannot be used without the preceding *Ätiologiekode*. 

<br>

#### 1. *Manifestationskode*

The *Manifestationskode* is marked with an asterisk (*), and coding is done according to the cross-star system. Star codes are explicitly defined as such in the ICD-10-GM.

#### 2. *Ausrufezeichenkode*

Beyond the *Kreuz-Stern-System*, there is another secondary diagnosis key: the *Ausrufezeichenkode*.
These additional codes are used to describe a disease in more detail or to delimit its severity. *Ausrufezeichenkodes* are designated as "optional" key numbers in the ICD-10-GM and § 301 SGB V. However, there are also *Ausrufezeichenkodes* that are mandatory (see [German Coding Guidelines](https://www.g-drg.de/G-DRG-System_2020/Kodierrichtlinien/Deutsche_Kodierrichtlinien_2020)).

<br>

#### **Additional indicators**.

The two additional indicators of the ICD-10-GM, the *diagnosis reliability* and the *side localization*, can be recorded under *ICD-10-GM diagnosis coded*.


#### Diagnostic reliability 

The additional indicator *Diagnosis reliability* indicates how reliable a diagnosis is to be evaluated in an individual case: 

A (Excluded diagnosis) , G (Confirmed diagnosis) , V (Suspected diagnosis) and Z ((asymptomatic) condition after the diagnosis in question).

* In outpatient care, the additional indication is **mandatory** for billing purposes. 

* In contrast, the additional indicators of *diagnosis certainty* are **not allowed** for billing purposes (DRG) in inpatient care.

For pure medical documentation, additional indicators are common and are used in all areas.


#### Side localization

This additional indicator can be used to specify the laterality of a diagnosis: 

R (Right), L (Left) and B (Bilateral).

Unlike diagnosis certainty, there is no need to differentiate between inpatient and outpatient care, as the specification is voluntary in both cases.


#### Double classification

It should be noted that in certain cases, a form of double classification different from the cross-star classification is applicable. Further guidance can be found in the [German Coding Guidelines - Dual Coding Chapter](https://www.g-drg.de/aG-DRG-System_2021/Kodierrichtlinien/Deutsche_Kodierrichtlinien_2021). For example, multiple codes (which can be regularly used as independent primary codes) can be combined for new diagnoses with functional activity.


--- 

<a id="Alpha"></a>
#### ALPHA-ID Diagnosis coded

Alternatively, it is possible to code a diagnosis in the core data set using the Alpha-ID. The Alpha-ID is based on the alphabetical index of the ICD-10-GM - each entry is assigned a unique and stable identification number (Alpha-ID). There are alphabetical entries with their own Alpha-IDs that denote synonyms and there are alphabetical entries with their own Alpha-IDs that denote independent disease entities within a "collective ICD" (often other). Unlike ICD-10-GM, there are no other additional identifiers in the Alpha-ID. 


[{{render:implementation-guides/ImplementationGuide-Common/images/AlphaNeu.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


--- 

<a id="Orpha"></a>
#### ORPHANET Diagnosis coded

In addition, the coding of rare diseases will be enabled by the specific Orpha identification numbers from the Orphanet database. <br> In the scope of the ICD-10-GM, the recording of rare diseases is only possible to a limited extent - of approximately 8,000 rare diseases that differ from one another, only about 300 can be represented by ICD codes, as they are grouped together, for example. <br> Adequate care and scientific coverage of the approximately 7,700 diagnoses that cannot be specifically ICD-coded is therefore only possible to a limited extent without the use of the ORPHAcodes.


[{{render:implementation-guides/ImplementationGuide-Common/images/OrphaNeu.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)


#### Complete diagnosis code for ORPHA coding.

There are no other additional codes for the ORPHAcodes. The *Complete diagnosis code* includes the **ORPHAcode**, the corresponding **code system** and the **disease name**.


--- 

<a id="SNOMEDCT"></a>
#### SNOMED CT Diagnosis coded

The Systematic Nomenclature of Medicine (SNOMED CT) is used internationally and is much more differentiated than the ICD-10 and is therefore to be introduced in Germany as well, which is anticipated by the information model presented here.

[{{render:implementation-guides/ImplementationGuide-Common/images/SnomedNeu.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

#### Complete diagnosis code for SNOMED CT coding.

The *Complete diagnosis code* includes the **SNOMED CT code**, the corresponding **code system**, and the **preferred name**.


--- 
<a id="weitereKataloge"></a>
### Other code systems

[{{render:implementation-guides/ImplementationGuide-Common/images/WeitereKodiersysteme.jpg}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=&effectiveDate=&conceptId=&conceptEffectiveDate=)

If required, the inclusion of further classifications and terminologies is possible. The inclusion of ICD-11 as a further code system is in preparation. <br> Some application areas for diagnosis documentation, such as [ICD-0](https://www.dimdi.de/static/de/klassifikationen/icd/icd-o-3/icdo3rev1html/) in the field of oncology, will be outsourced to the corresponding extension modules.

--- 

#### Body site

The *body site* can be used to specify the area of the body in which a disease was diagnosed (topographical information). The *body site* was intentionally separated from *SNOMED Diagnosis coded* so that, for example, when coding using ICD-10-GM, it is possible to code the body site. In this case, SNOMED CT is used, but this does not require a complete SNOMED CT code.
The specification of the *body site* should not be mistaken for the ICD additional indicator *(side) localization* (right, left, both sides).

<br>

### **Complementary aspects**

In addition to the catalog/terminology-based classification and coding, the DIAGNOSIS module offers the possibility of providing more detailed information on a diagnosis, for example, by using free text fields. 

#### Free text description

Plain text description of the diagnosis - this does not have to correspond to the catalog text of the respective code system. For medical documentation, the *free text description* is mandatory. 

#### Diagnosis explanation

The *Diagnosis Explanation* is intended to allow the physician to provide more detailed information in addition to a diagnosis.

---

Finally, the authors would like to remind everyone that the DIAGNOSIS module in conjunction with the PERSON module requires special attention to the implementation of organizational and technical measures as well as the implementation of security concepts and careful handling of data protection due to the sensitivity of the data.