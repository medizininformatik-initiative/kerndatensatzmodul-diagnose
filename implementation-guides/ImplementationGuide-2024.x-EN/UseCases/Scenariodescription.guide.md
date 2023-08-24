## Description of scenarios for the application of the module DIAGNOSIS


The modelling and FHIR profiling of the basic modules of the MII core data set, including the DIAGNOSE module, aim to generate the most generic information models possible for a wide range of application scenarios. Priority consideration was given to the consortial use cases of the four consortia of the [MII](https://www.medizininformatik-initiative.de)[DIFUTURE](https://difuture.de), [HiGHmed](https://www.highmed.org), [MIRACUM](https://www.miracum.org) and [SMITH](https://www.smith.care/konsortium/) and the two transconsortial collaborative projects [CORD-MI](https://www.medizininformatik-initiative.de/CORD) and [POLAR-MI](https://www.medizininformatik-initiative.de/POLAR). A major influence on the design has also been the fact that the digitally stored (or to be stored) patient data from the care processes in the participating 34 university hospitals form the essential basis of the MII.


Referring to DIAGNOSE module: Diagnoses play a central role in every use case of the MII.

---

### *The scenarios of the consortia in detail:*


* DIFUTURE:
The approach of DIFUTURE is use case driven, whereby use cases are linked to specific disease entities. It focuses on the neurological disease entities multiple sclerosis and Parkinson's disease, but also on oncological and cardiological indications. Multiple sclerosis and Parkinson's disease can be identified in a relatively differentiated manner using the ICD-10 diagnosis codes (including alpha-ID, if applicable). The other parameters of the DIAGNOSIS module are also relevant in the DIFUTURE use cases. 

* HiGHmed:
Due to lack of fine granular diagnoses that were documented for care instead of billing, diagnoses which were coded for billing are also used in HiGHmed. Diagnoses play an important role in all HiGHmed use cases, especially in the cardiology and oncology use cases in order to include comorbidities.

* MIRACUM:
In all use cases of the MIRACUM consortium, the focus is on patients' diseases and the encoded diagnoses on which they are based. In Use Case 1 "IT Support for Patient Recruitment" these diagnoses are an important criterion for the inclusion or exclusion of patients in studies; in Use Case 2 "Prediction of Clinical Courses" they are used in the models to be developed as a criterion for the population under study and its comorbidities; and in Use Case 3 "IT Support for Molecular Tumor Boards" tumor entities are primarily described by ICD codes in addition to other classification systems.

* SMITH:
In the SMITH use case ASIC, the focus lies on patients with Acute Respiratory Distress Syndrome (ARDS), whose diagnosis has to be coded accordingly, including a concrete determination of severity. HELP is the second use case in the field of antibiotic stewardship - complications with a specific diagnosis such as endocarditis, sepsis or septic shock are relevant here. The Phenotyping Pipeline (PheP) plays an important role in determining and specifying a wide variety of diagnoses in the context of phenotyping patients.

* CORD-MI:
Within the scope of CORD-MI, the aim is to refine diagnostic documentation for patients with rare diseases by strengthening ORPHAcodes in the context of care. Specific analyses of cystic fibrosis, phenylketonuria, Fabry disease, sagittal synostosis, POMC deficiency and neuromyelitis optica as well as non-specific analyses of the distribution of and data quality for several diagnoses are intended to illustrate developments in the progress of the project.

* POLAR-MI:
In the POLAR-MI use case, diagnoses have a double meaning. On the one hand, they are the justification for the application of drugs. On the other hand, they represent adverse drug reactions. Contributing to their reduction is the central aim of POLAR-MI.

