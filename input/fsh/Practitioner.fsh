Profile:     CdrPractitioner
Parent:      ClPrestador
Id:          CdrPractitioner
Title:       "Prestador de Salud"
Description: "Este recurso nace del proyecto de laboratorio del servicio de salud Araucanía sur y la guía core de HL7 Chile."

* id 1..1 MS
* id ^short = "Debe ser un uuid"

* identifier ^short = "Identificadores de prestadores."
* identifier contains id_local 0..1 MS

* identifier[RUN] ^short = "RUN."
* identifier[RUN] ^definition = "Identificador del prestador por medio del rol único nacional."

* identifier[RUN].use 1..1 MS
* identifier[RUN].use ^short = "Uso del identificador."
* identifier[RUN].use ^definition = "Uso del identificador."
* identifier[RUN].use from IdentifierUse (required)
* identifier[RUN].use = #official

* identifier[RUN].system 0..1 MS
* identifier[RUN].system ^short = "Sistema del registro civil."

* identifier[RUN].value 1..1 MS
* identifier[RUN].value ^short = "Valor del identificador."

* identifier[RNPI] ^short = "Registro nacional de prestadores individuales."
* identifier[RNPI] ^definition = "Identificador del prestador en la base de datos de la super intendencia de salud."

* identifier[RNPI].use 1..1 MS
* identifier[RNPI].use ^short = "Uso del identificador."
* identifier[RNPI].use ^definition = "Uso del identificador."
* identifier[RNPI].use from IdentifierUse (required)
* identifier[RNPI].use = #secondary

* identifier[RNPI].system 0..1 MS
* identifier[RNPI].system ^short = "Sistema de alamcenamiento de la super intendencia."

* identifier[RNPI].value 1..1 MS
* identifier[RNPI].value ^short = "Valor del identificador."

* identifier[id_local] ^short = "Identificador local."
* identifier[id_local] ^definition = "Identificador local del tecnologo médico que realiza los examenes."

* identifier[id_local].use 1..1 MS
* identifier[id_local].use ^short = "Uso del identificador."
* identifier[id_local].use ^definition = "Uso del identificador."
* identifier[id_local].use from IdentifierUse (required)
* identifier[id_local].use = #usual

* identifier[id_local].system 0..1 MS
* identifier[id_local].system ^short = "Sistema de alamcenamiento del servicio de salud araucania sur."
* identifier[id_local].system = "http://ssasur.cl/IdTecnologoLocal"

* identifier[id_local].value 1..1 MS
* identifier[id_local].value ^short = "Valor del identificador."

* name 1..1 MS
* name.use ^short = "Uso del nombre del prestador."
* name.use ^definition = "Este nombre corresponde al cual aparece inscrito en registro civil."
* name.use = #official  //fixed value
* name.family 1..1 MS
* name.family ^short = "Primer Apellido."
* name.family ^definition = "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil."
* name.family.extension[humanname-mothers-family] ^short = "Extensión para segundo apellido."
* name.given 1.. MS
* name.given ^short = "Nombre o nombres del prestador."

* telecom 0..1 MS 
* telecom ^short = "Medio de comunicación que utiliza el prestador que en este caso es unicamente un teléfono."
* telecom.system 1..1 MS
* telecom.system ^short = "phone"
* telecom.system ^definition = "Sistema del medio de comunicación, que en este caso es, teléfono(phone)."
* telecom.system from ContactPointSystem
* telecom.system = #phone
* telecom.value 1..1 MS
* telecom.value ^short = "Valor del medio de comunicación."
* telecom.use 0..1 MS
* telecom.use ^short = "Uso del medio de comunicación"
* telecom.use from ContactPointUse

* address 0..* MS 
* address and address.use and address.line and address.city and address.district and address.state and address.country MS
* address.use 1..1
* address.use ^short = "Definición del tipo de domicilio home | work | temp | old (requerido)"
* address.use from AddressUse
* address.line ^short = "Calle o avenida, numero y casa o depto."
* address.city ^short = "Campo para Comuna de residencia."
* address.city from VSCodigosComunaCL (required)
* address.district ^short = "Campo para Provincia de Residencia."
* address.district from VSCodigosProvinciasCL (required)
* address.state ^short = "Campo para Provincia de Región."
* address.state from VSCodigosRegionesCL (required)
* address.country ^short = "Campo para País de Residencia."
* address.country from CodPais (required)

* gender 1..1 MS
* gender ^short = "male | female | other | unknown (requerido)"
* gender ^definition = "Género con el cual esta registrado."
* gender from AdministrativeGender

* birthDate 1..1 MS
* birthDate ^short = "Fecha de nacimiento del Prestador. El formato debe ser YYYY-MM-DD."

* qualification[Cert] ^short = "Código del certificado."
* qualification[Cert].code 1..1 MS
* qualification[Cert].code ^short = "Código del certificado."
* qualification[Cert].code ^definition = "Código que identifica cual es la profesión que realiza."
* qualification[Cert].code.coding ^short = "Código que representa el certificado."
* qualification[Cert].code.coding from TitulosProfesionalesPrestadoresVS (example)
* qualification[Cert].code.coding.code ^short = "Código"
* qualification[Cert].code.coding.display ^short = "Traducción del código."
* qualification[Cert].code.text ^short = "Certificado(s)"
* qualification[Cert].code.text = "Certificado(s)"


Instance: Profesional
InstanceOf: CdrPractitioner
Description: "Profesional del servicio de salud araucania sur."
Usage:      #example

* identifier[RUN]
  * use = #official
  * value = "10.006.005-4"
* identifier[RNPI]
  * use = #secondary
  * system = "https://rnpi.superdesalud.gob.cl/"
  * value = "123456"
* name
  * given[0] = "Alejando"
  * family = "Medina"
* gender = #male
* birthDate = "1960-09-11"
