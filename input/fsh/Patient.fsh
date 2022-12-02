Profile:     CdrPatient
Parent:      CLPatient
Id:          CdrPatient
Title:       "Paciente Servicio de Salud Araucania Sur"
Description: "Este recurso paciente utiliza la información mínima requerida según la guía core y el servicio de salud Araucanía sur"

* id 1..1 MS
* id ^short = "Debe ser un uuid"

* extension[CodigoPaises] 1..1 MS
* extension[CodigoPaises] ^short = "Nacionalidad del Paciente."
* extension[CodigoPaises].valueCodeableConcept from CodPais

* extension contains IdentidadDeGenero named IdentidadDeGenero 0..1 MS
* extension[IdentidadDeGenero] ^short = "Identidad de género del Paciente."

* extension contains Prevision named Prevision 1..1 MS
* extension[Prevision] ^short = "Sistema de previsión utilizado por el paciente."

* extension contains PuebloOriginario named PuebloOriginario 0..1 MS
* extension[PuebloOriginario] ^short = "Pueblo originario del paciente."

* extension contains NivelInstruccion named NivelInstruccion 1..1 MS
* extension[NivelInstruccion] ^short = "Nivel educacional del paciente."

* extension contains Ocupacion named Ocupacion 1..1 MS
* extension[Ocupacion] ^short = "Ocupación del paciente."

* identifier 1..* MS
* identifier ^short = "Identificadores del paciente." 
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = use
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Diferenciador entre el rut, fichas y la base única de paciente."
* identifier contains identificador 0..* and BDUP 1..1 MS and ficha 1..* MS

* identifier[identificador] ^short = "RUN, Pasaporte o DNI."
* identifier[identificador] ^definition = "Utilizado para los identificadores nacionales o internacionales"

* identifier[identificador].use 1..1 MS
* identifier[identificador].use ^short = "Uso del identificador."
* identifier[identificador].use ^definition = "Uso del identificador."
* identifier[identificador].use from IdentifierUse (required)
* identifier[identificador].use = #usual

* identifier[identificador].type MS
* identifier[identificador].type ^short = "Tipo de documento de Id."
* identifier[identificador].type ^definition = "Se define como tipo de documento de Id aquel definido en el Sistema de Codificación V2-0203 de Hl7. Este sistema es extensible."
* identifier[identificador].type.extension ^short = "País de Origen del Documento de Id." 
* identifier[identificador].type.coding.system ^short = "Sistema de almacenamiento del identificador."
* identifier[identificador].type.coding.code MS
* identifier[identificador].type.coding.code ^short = "Código de tipo de documento."

* identifier[identificador].system 0..1 MS
* identifier[identificador].system ^short = "Sistema de almacenamiento del paciente."

* identifier[identificador].value 1..1 MS
* identifier[identificador].value ^short = "Valor del identificador."

* identifier[BDUP] ^short = "Identificador de la base de datos única de paciente."
* identifier[BDUP] ^definition = "Identificador de la base de datos única de paciente propia del servicio de salud Araucanía sur."

* identifier[BDUP].use 1..1 MS
* identifier[BDUP].use ^short = "Uso del identificador."
* identifier[BDUP].use ^definition = "Uso del identificador, en este caso se fuerza a ser \"official\"."
* identifier[BDUP].use from IdentifierUse  (required)
* identifier[BDUP].use = #official

* identifier[BDUP].system 1..1 MS
* identifier[BDUP].system ^short = "Sistema de almacenamiento del paciente."
* identifier[BDUP].system = "http://ssasur.cl/BDUP"

* identifier[BDUP].value 1..1 MS
* identifier[BDUP].value ^short = "Valor del identificador."

* identifier[ficha] ^short = "Identificador de la ficha del paciente."
* identifier[ficha] ^definition = "Identificador de la ficha del paciente propia de un lugar."

* identifier[ficha].use 1..1 MS
* identifier[ficha].use ^short = "Uso del identificador."
* identifier[ficha].use ^definition = "Uso del identificador, en este caso se fuerza a ser secundario."
* identifier[ficha].use from IdentifierUse  (required)
* identifier[ficha].use = #secondary

* identifier[ficha].value 1..1 MS
* identifier[ficha].value ^short = "Valor de la ficha."

* identifier[ficha].assigner 1..1 MS
* identifier[ficha].assigner ^short = "Recinto de salud que se creo la ficha del paciente."
* identifier[ficha].assigner only Reference(CdrOrganizationHosp) 

* name 1..2 MS
* name ^short = "Nombre(s) con el cual se llama al paciente."

* name[NombreOficial] 1..1 MS
* name[NombreOficial] ^short = "Nombre del paciente que aparece en el registro civil."
* name[NombreOficial].use 1..1 MS
* name[NombreOficial].use ^short = "Uso del nombre, en este caso se fuerza a \"official\"" 
* name[NombreOficial].use = #official
* name[NombreOficial].family ^short = "Primer apellido del paciente."
* name[NombreOficial].family.extension[humanname-mothers-family] ^short =  "Segundo apellido del paciente."
* name[NombreOficial].given ^short = "Nombre o nombres del paciente."

* name[NombreSocial] 0..1 MS
* name[NombreSocial] ^short = "Nombre con el cual se autodenomina el paciente."
* name[NombreSocial].use ^short = "Uso del nombre, en este caso se fuerza a \"usual\"."
* name[NombreSocial].use = #usual
* name[NombreSocial].given ^short = "Nombre o nombres del paciente con los cuáles se identifica el paciente."

* telecom and gender and birthDate  MS

* telecom ^short = "Medio de comunicación con el paciente."
* telecom.system 1..1 MS
* telecom.system ^short = "phone | fax | email | pager | url | sms | other"
* telecom.system ^definition = "Sistema del medio de comunicación."
* telecom.system from ContactPointSystem
* telecom.value 1..1 MS
* telecom.value ^short = "Valor del medio de comunicación."

* gender 1..1 MS
* gender ^short = "Sexo de nacimiento registrado."

* birthDate 1..1 MS
* birthDate ^short = "Fecha de nacimiento del paciente."

* address 1..1  MS
* address ^short = "Dirección del paciente."
* address only ClAddress
* address and address.use and address.line and address.city and address.district and address.state and address.country MS
* address.use ^short = "Tipo de domicilio home | work | temp | old (requerido)"
* address.line ^short = "Calle o avenida, número de casa y/o depto."
* address.city ^short = "Campo para Comuna de residencia."
* address.city.extension[ComunasCl] ^short = "Códigos para comunas en Chile."
* address.district ^short = "Campo para provincia de residencia."
* address.district.extension[ProvinciasCl] ^short = "Códigos para provincias en Chile."
* address.state ^short =  "Campo para la región."
* address.state.extension[RegionesCl] ^short = "Códigos para regiones en Chile."
* address.country ^short = "Campo para País de residencia."
* address.country.extension[CodigoPaises] ^short = "Código de Identificación de países."

* maritalStatus 1..1 MS 
* maritalStatus ^short = "Estado civil."
//* maritalStatus from EstadoCivilVS

* contact 0..* MS
* contact ^short = "Representante legal del paciente."
* contact.extension[IdContacto] 1..1 MS
* contact.extension[IdContacto] ^short = "Extensión para incluir el run del representante."
* contact.extension[IdContacto].extension[tutId] ^short = "Run del representante."
* contact.extension[IdContacto].extension[tutId].valueIdentifier ^short = "Valor de la extensión."
* contact.extension[IdContacto].extension[tutId].valueIdentifier.system ^short = "Sistema de almacenamiento del identificador."
* contact.extension[IdContacto].extension[tutId].valueIdentifier.value ^short = "RUN."
* contact.extension[IdContacto].extension[docProc] ^short = "Origen del documento."
* contact.extension[IdContacto].extension[docProc].valueCodeableConcept ^short = "Origen del documento."
* contact.extension[IdContacto].extension[docProc].valueCodeableConcept ^definition = "Se fuerza a que sea un run de chile porque es el identificador que maneja BUDP."
* contact.relationship ^short = "Relación con del paciente con el representante legal."
* contact.relationship.coding ^short = "El tipo de relación en este caso es un 'Contacto de Emergencia' según la codificación oficial de FHIR."
* contact.relationship.coding from PatientContactRelationship (required)
* contact.relationship.coding.system ^short = "Sistema."
* contact.relationship.coding.system = $v2-0131
* contact.relationship.coding.code ^short = "Código."
* contact.relationship.coding.code = #C
* contact.relationship.coding.display ^short = "Valor."
* contact.relationship.coding.display  = "Emergency Contact"
* contact.name 1..1 MS
* contact.name ^short = "Nombre del representante."
* contact.name.use 1..1 MS
* contact.name.family ^short = "Primer apellido del representante."
* contact.name.family.extension[humanname-mothers-family] ^short =  "Segundo apellido del representante."
* contact.name.given ^short = "Nombre o nombres del representante."

Extension:   IdentidadDeGenero
Parent:      GenderIdentity
Title:       "Identidad de Género"
Description: "Extensión para incluir la identidad de género del paciente."

* value[x] from GenderIdentityVS (extensible)

Extension:   Prevision
Id:          Prevision
Title:       "Previsión del Paciente"
Description: "Sistema de previsión de salud utilizado por el paciente."

* extension contains prevision 1..1 MS and tramoisapre 0..1 MS 

* extension[prevision] ^short = "Define el sistema de previsión utilizado por el paciente."
* extension[prevision].value[x] only Coding
* extension[prevision].valueCoding from SistemaDePrevisionVS (required)
* extension[tramoisapre] ^short = "Define el tramo o la isapre que pertenece el paciente."
* extension[tramoisapre].value[x] only Coding
* extension[tramoisapre].valueCoding from TramosOIsapresVS (required)

Extension:   PuebloOriginario
Id:          PuebloOriginario
Title:       "Pueblo Originario"
Description: "Pueblo originario al cual pertenece la persona."

* value[x] only CodeableConcept
* value[x] ^short = "Código de pueblo originario definido por la 643."
* valueCodeableConcept.coding from PueblosOriginariosVS (required)

Extension:   NivelInstruccion
Id:          NivelInstruccion
Title:       "Nivel Instrucción"
Description: "Nivel educacional en la que se encuentra el paciente."

* value[x] only CodeableConcept
* value[x] ^short = "Código de nivel de instrucción definido por la 643."
* valueCodeableConcept.coding from NivelInstruccionVS (required)

Extension:   Ocupacion
Id:          Ocupacion
Title:       "Ocupación"
Description: "Ocupación del paciente."

* value[x] only CodeableConcept
* value[x] ^short = "Códigos de ocupación del paciente."
* valueCodeableConcept.coding from OcupacionVS (example)

Instance:    PatientExample
InstanceOf:  CdrPatient
Title:       "Paciente de Ejemplo"
Description: "Paciente de Prueba."


* extension[CodigoPaises] = Pais

* extension[IdentidadDeGenero] = IdentidadGenero

* extension[Prevision] = PrevisionPaciente

* extension[PuebloOriginario] = PuebloOriginarioE

* extension[NivelInstruccion] = NivelInstruccionE

* extension[Ocupacion] = OcupacionE

* identifier[identificador]
  * use = #usual    
  * type.extension[0] = CodigoPaisesExample
  * type.coding = $CodigosDNI#NNCHL "Chile"
  * system = "https://api.registrocivil.cl/rut"
  * value = "15.236.327-k"
* identifier[BDUP]
  * use = #official    
  * system = "http://ssasur.cl/BDUP"
  * value = "158468453"
* identifier[ficha]
  * use = #secondary
  * value = "12345648"
  * assigner = Reference(OrganizationHospital)
* name[NombreOficial]
  * use = #official 
  * given[0] = "James"
  * family = "Pond"
  * family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
  * family.extension.valueString = "Sandoval"

//un contactos, un email

* telecom.system = #email
* telecom.use = #home
* telecom.value = "wilCAB12l@wilmermail.com"

//sexo registrado al nacer y fecha de nacimiento
* gender = #male
* birthDate = "1968-11-03"

// Una sola dirección
* address.use = #home
* address.line = "Av Los Chirimoyos, 32, casa 4"
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding = CSCodigosComunaCL#15101
* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding = CSCodigosProvinciasCL#151
* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding = CSCodigosRegionesCL#15 "Arica y Parinacota"
* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding = urn:iso:std:iso:3166#152

//Estado Civil
* maritalStatus.coding = EstadoCivilCS#01 "SOLTERO(A)"

Instance:   Pais
InstanceOf: CodigoPaises
Usage:      #inline

* valueCodeableConcept.coding = urn:iso:std:iso:3166#222 "El Salvador"

Instance:   CodigoPaisesExample
InstanceOf: CodigoPaises
Usage:      #inline

* valueCodeableConcept.coding = urn:iso:std:iso:3166#152 "Chile"

Instance:   IdentidadGenero
InstanceOf: IdentidadDeGenero
Usage:      #inline

* valueCodeableConcept.coding = GenderIdentityCs#01 "Masculino"

Instance:   PrevisionPaciente
InstanceOf: Prevision
Usage:      #inline

* extension[prevision].valueCoding = SistemaDePrevisionCS#01 "FONASA"
* extension[tramoisapre].valueCoding = TramosDeFonasaCS#D "Tramo D"

Instance:   PuebloOriginarioE
InstanceOf: PuebloOriginario
Usage:      #inline

* valueCodeableConcept.coding = PueblosOriginariosCS#01 "MAPUCHE"

Instance: NivelInstruccionE
InstanceOf: NivelInstruccion
Usage: #inline

* valueCodeableConcept.coding = NivelInstruccionCS#05 "PROFESIONAL UNIVERSITARIO"

Instance: OcupacionE
InstanceOf: Ocupacion
Usage: #inline

* valueCodeableConcept.coding = OcupacionCS#034	"INGENIERO CIVIL"