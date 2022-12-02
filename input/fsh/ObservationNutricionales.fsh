Profile:     CdrEstadoNutricional
Parent:      CdrSignosVitales
Id:          CdrEstadoNutricional
Title:       "Estado Nutricional"
Description: "Este recurso permite guardar la información del estado nutricional de un paciente, dado los resultados de sus examenes"

* code 1..1 MS
* code ^short = "Código del estado nutricional"
* code =  $loinc#75305-3 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "DIAGNOSTICO NUTRICIONAL ADULTO"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Este es el resultado final del estado nutricional del paciente, despúes de un estudio realizado previamente."
* valueCodeableConcept from EscalaNutricionales

Instance:    EstadoNutricionalExample
InstanceOf:  CdrEstadoNutricional
Usage:       #Example
Title:       "Estado Nutricional"
Description: "Ejemplo del estado de nutricional de un paciente"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#75305-3 "Nutrition status"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueCodeableConcept = EscalaNutricionalAdulto#Normal "Normal"