Profile:     CdrSemanasECO
Parent:      CdrSignosVitales
Id:          CdrSemanasECO
Title:       "Edad Gestacional en Semanas"
Description: "Este recurso permite guardar la información del estimado de semanas de un feto."

* code 1..1 MS
* code ^short = "Código de edad gestacional en semanas."
* code =  $loinc#49051-6 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "SEMANAS ECO"


* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor numérico."

* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "Unidad representativa."

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad."
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code = #wk

Instance:    SemanasECOExample
InstanceOf:  CdrSemanasECO
Usage:       #Example
Title:       "Edad Gestacional en Semanas"
Description: "Ejemplo de la semana gestacional de una paciente embarazada."


* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#49051-6 "Gestational age in weeks"
* code.text = "SEMANAS ECO"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 29.3 'wk' "wk"