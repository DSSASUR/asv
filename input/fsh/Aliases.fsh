//Sistemas
Alias:  $SCT = http://snomed.info/sct
Alias:  $loinc = http://loinc.org
Alias:  $ATC = http://www.whocc.no/atc
Alias:  $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
RuleSet: RuleSetMeta
* ^version = "0.3.1"
* ^status = #draft

//Extensiones
Alias:   SegundoApellido = http://hl7.org/fhir/StructureDefinition/humanname-mothers-family
Alias:   GenderIdentity = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity
Alias:   CodigoPaises = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises
Alias:   IdContacto = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/IdContacto
Alias:   ComunasCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ComunasCl
Alias:   ProvinciasCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ProvinciasCl
Alias:   RegionesCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/RegionesCl
Alias:  VersionNumber = http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber

//Perfiles
Alias:  CLPatient = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePacienteCl
Alias:  ClOrganization = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CoreOrganizacionCl
Alias:  ClPrestador = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CorePrestadorCl
Alias:  ClLocation = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CoreLocalizacionCl
Alias:  ClBundle = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/BundleCl
// Alias:  DocumentoCl = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/DocumentoCl
Alias:  ClEspecialidad = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CoreEspecialidadCl
Alias:  ObservationSignalVital = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias:  ClProvenance = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ProvenanceCl

//Data-Type
// Alias: ClAddress = https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/cl-address
