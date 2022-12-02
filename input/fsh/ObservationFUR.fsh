Profile:     CdrSemanasFUR
Parent:      CdrSignosVitales
Id:          CdrSemanasFUR
Title:       "Estimado del Último Período"
Description: "Este recurso permite guardar la información del estimado del último periodo del paciente."

* code 1..1 MS
* code ^short = "Código de la edad gestacional en semanas."
* code =  $loinc#11779-6 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "SEMANAS FUR"

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

Instance:    SemanasFURExample
InstanceOf:  CdrSemanasFUR
Usage:       #Example
Title:       "Estimado del Último Período"
Description: "Ejemplo del estimado del ultimo periodo de una paciente con sospecha de embarazo"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding =  $loinc#11779-6 "Delivery date Estimated from last menstrual period"
* code.text = "SEMANAS FUR"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 33 'wk' "wk"