Profile:     CdrCircunferenciaCraneana
Parent:      CdrSignosVitales
Id:          CdrCircunferenciaCraneana
Title:       "Circunferencia Craneana"
Description: "Este recurso permite guardar la información de la circunferencia creanana de los pacientes."

* code 1..1 MS
* code ^short = "Código de Cabeza Circunferencia occipital-frontal."
* code =  $loinc#8287-5 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "CIRCUNSFERENCIA CRANEANA"

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

Instance:    CircunferenciaCraneanaExample
InstanceOf:  CdrCircunferenciaCraneana
Usage:       #Example
Title:       "Circunferencia Craneana"
Description: "Ejemplo de un recurso almacenando la información de la circunferencia craneana."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#8287-5 "Head Occipital-frontal circumference by Tape measure"
* code.text = "CIRCUNSFERENCIA CRANEANA"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 32 'cm' "cm"