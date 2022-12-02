Profile:     CdrSignosVitales
Parent:      ObservationSignalVital
Id:          CdrSignosVitales
Title:       "Signos Vitales de Salud Araucanía Sur"
Description: "Este recurso permite mostrar la información de los signos vitales LOINC de los pacientes."
* ^language = #es

* id 1..1 MS
* id ^short = "Debe ser un uuid"

* status 1..1 MS
* status ^short = "registered | preliminary | final | amended +"
* status ^definition = "Estado actual de la toma de signos vitales."

* category 1..* MS
* category[VSCat] ^short = "Clasificación del tipo de la observación."
* category[VSCat].coding ^short = "Clasificación del tipo de la observación."
* category[VSCat].coding.system ^short = "Sistema de codificación."
* category[VSCat].coding.code ^short = "Código."


* code 1..1 MS
* code ^short = "Respuestas codificadas de los resultados de signos vitales de C-CDA."
* code from SignosVitales 

* subject 1..1 MS
* subject ^short = "Paciente al cual está relacionado la observación."
* subject only Reference(CdrPatient)

* effective[x] 1..1 MS
* effective[x] ^short = "Fecha en que se realiza la toma de signos."
* effective[x] only dateTime or Period

* value[x] 0..1 MS
* value[x] ^short = "El valor de los signos vitales se registra utilizando el tipo de datos Cantidad. Para respaldar observaciones como el tamaño del manguito, podría usar otros tipos de datos como CodeableConcept."

* dataAbsentReason  0..1 MS
* dataAbsentReason ^short = "Se utiliza cuando se notifican los componentes del panel de signos vitales."

* derivedFrom 0..1 MS 
* derivedFrom ^short = "Mediciones relacionadas a partir de las cuales se realiza la observación."

* component 0..* MS 
* component ^short = "Usado cuando reportan presión sistólica y diastólica."

* component.code 1..1 MS
* component.code ^short = "Respuestas codificadas de los resultados de signos vitales de C-CDA."

* component.value[x] 0..1 MS
* component.value[x] ^short = "El valor de los signos vitales se registra utilizando el tipo de datos Cantidad. Para respaldar observaciones como el tamaño del manguito, podría usar otros tipos de datos como CodeableConcept."

* component.dataAbsentReason  0..1 MS
* component.dataAbsentReason ^short = "Se utiliza cuando se notifican los componentes del panel de signos vitales."

Instance:    SignosVitalesExample
InstanceOf:  CdrSignosVitales
Usage:       #Example
Title:       "Signo Vital Error"
Description: "Ejemplo de un Signo vital tomado por error."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* code = $loinc#8304-8 "Body height special circumstances"
* code.text = "TALLA"
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#error
* derivedFrom = Reference(TallaExample)

