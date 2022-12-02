Profile:     CdrMovimientoFetal
Parent:      CdrSignosVitales
Id:          CdrMovimientoFetal
Title:       "Movimiento Fetal"
Description: "Este recurso permite guardar la información del movimiento de un feto"

* code 1..1 MS
* code ^short = "Código del movimiento fetal"
* code =  $loinc#57088-7 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "MF"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Este es el resultado del moviemto fetal"
* valueCodeableConcept from EscalaMovimientoFetalVS

Instance:    MovimientoFetalExample
InstanceOf:  CdrMovimientoFetal
Usage:       #Example
Title:       "Movimiento Fetal"
Description: "Ejemplo del moviemiento fetal que se presenta dentro de una paciente embarazada"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#57088-7 "Fetal Movement - Reported"
* code.text = "MF"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueCodeableConcept = EscalaMovimientoFetalCS#+
