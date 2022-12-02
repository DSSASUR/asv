Profile:     CdrCircunferenciaCintura
Parent:      CdrSignosVitales
Id:          CdrCircunferenciaCintura
Title:       "Circunferencia Cintura"
Description: "Este recurso permite guardar la información de la circunferencia cintura de los pacientes."

* code 1..1 MS
* code ^short = "Código de circunferencia en la cintura."
* code = $loinc#8280-0 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "CIRCUNFERENCIA DE CINTURA"

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

Instance:    CircunferenciaCinturaExample
InstanceOf:  CdrCircunferenciaCintura
Usage:       #Example
Title:       "Circunferencia Cintura"
Description: "Ejemplo de un recurso almacenando la información de la circunferencia en la cintura."


* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#8280-0 "Circumf.at umbilicus by Tape measure"
* code.text = "CIRCUNFERENCIA DE CINTURA"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 85 'cm' "cm"