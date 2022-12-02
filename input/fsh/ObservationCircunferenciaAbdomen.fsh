Profile:     CdrCircunferenciaAbdominal
Parent:      CdrSignosVitales
Id:          CdrCircunferenciaAbdominal
Title:       "Circunferencia Abdominal"
Description: "Este recurso permite guardar la información de la circunferencia abdominal de los pacientes."

* code 1..1 MS
* code ^short = "Código de cabeza circunferencia abdominal."
* code = $loinc#56086-2 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "CIRCUNFERENCIA ABDOMINAL"

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
* valueQuantity.code = #cm

Instance:    CircunferenciaAbdominalExample
InstanceOf:  CdrCircunferenciaAbdominal
Usage:       #Example
Title:       "Circunferencia Abdominal"
Description: "Ejemplo de un recurso almacenando la información de la circunferencia abdominal."


* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#56086-2 "Adult Waist Circumference Protocol"
* code.text = "CIRCUNFERENCIA ABDOMINAL"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 72 'cm' "cm"