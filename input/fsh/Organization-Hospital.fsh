Profile:     CdrOrganizationHosp
Parent:      OrganizacionCL
Id:          CdrOrganizationHosp
Title:       "Recinto de Salud Araucania Sur"
Description: "Recinto que entrega prestaciones de salud."

* id 1..1 MS
* id ^short = "Debe ser un uuid"

* identifier 1..* MS
* identifier ^short = "Identificador de la organización (Hospital, cesfam, etc)."
* identifier ^definition = "Identificador de la organización (Hospital, cesfam, etc.). EL primero debe ser el local de SSASUR"
* identifier ^comment = "Solo puede utilizar uno de los dos códigos."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "En caso de existir un /“system”/ ya no se podrá usar el otro descrito por esta guía."
* identifier ^slicing.ordered = false
* identifier contains ssasur 1..1 MS

* identifier[ssasur] ^short = "Identificador del hospital."
* identifier[ssasur].use 1..1 MS
* identifier[ssasur].use ^short = "usual | official | temp | secondary | old (If known)"
* identifier[ssasur].use ^definition = "Uso del sistema de identificación, en este caso se fuerza a /“official”/"
* identifier[ssasur].use = #official

* identifier[ssasur].system 1..1 MS
* identifier[ssasur].system ^short = "Este es el sistema donde se almacena los identificadores."
* identifier[ssasur].system ^definition = "Estos sistemas de identificadores pueden venir de 'http://ssasur.cl/CodigoHospital' para reconocer algún recinto de salud."
* identifier[ssasur].system = "http://ssasur.cl/CodigoHospital"

* identifier[ssasur].value 1..1 MS
* identifier[ssasur].value ^short = "Código de identificación."
* identifier[ssasur].value ^definition = "Código utilizado por el SSASUR y el DEIS para identificar los hospitales o prestadores de salud."

* active 0..1 MS
* active ^short = "Estado de una organización está activa o no (true|false)."

* name 1..1 MS
* name ^short = "Nombre legal de una organización."

* alias 0..1 MS 
* alias ^short = "Nombre de fantasia de una organización."

* telecom MS 
* telecom ^short = "Medio de comunicación que utiliza la organización."
* telecom.system 1..1 MS
* telecom.system ^short = "phone | fax | email | pager | url | sms | other"
* telecom.system ^definition = "Sistema del medio de comunicación."
* telecom.system from ContactPointSystem
* telecom.value 1..1 MS
* telecom.value ^short = "valor del medio de comunicación."

* address and address.use and address.line and address.city and address.district and address.state and address.country MS
* address ^short = "Dirección."
* address.use 1..1
* address.use ^short = "home | work | temp | old"
* address.use ^definition = "En este caso no se puede usar el código 'home'."
* address.use from AddressUse
* address.line ^short = "Calle o avenida, numero y casa o depto."
* address.city ^short = "Campo para Comuna de residencia."
//* address.city from VSCodigosComunaCL (required)
* address.district ^short = "Campo para Provincia de Residencia."
//* address.district from VSCodigosProvinciasCL (required)
* address.state ^short = "Campo para Región de Región."
//* address.state from VSCodigosRegionesCL (required)
* address.country ^short = "Campo para País de Residencia."
//* address.country from CodPais (required)

* contact MS
* contact ^short = "Contacto de la organización para ciertos propositos"

* contact.purpose MS 
* contact.purpose ^short = "Proposito del contacto."

* contact.name MS
* contact.name ^short = "Nombre del contacto."

* contact.telecom MS
* contact.telecom ^short = "Medio de contacto."
* contact.telecom ^short = "Medio de comunicación que utiliza la organización."
* contact.telecom.system 1..1 MS
* contact.telecom.system ^short = "phone | fax | email | pager | url | sms | other"
* contact.telecom.system ^definition = "sistema del medio de comunicación."
* contact.telecom.system from ContactPointSystem
* contact.telecom.value 1..1 MS
* contact.telecom.value ^short = "valor del medio de comunicación."
* contact.telecom.use 1..1 MS
* contact.telecom.use ^short = "home | work | temp | old | mobile"
* contact.telecom.use ^definition = "uso del medio de comunicación."
* contact.telecom.use from ContactPointUse

Instance:    OrganizationHospital
InstanceOf:  CdrOrganizationHosp
Usage:       #example
Title:       "Hospital ejemplo"
Description: "Ejemplo del uso del CdrOrganization con un identificador de hospital."


* identifier[ssasur]
  * use = #official
  * system = "http://ssasur.cl/CodigoHospital"
  * value = "7"
* name = "Hospital de Tolten"
