Profile:     CdrTemperaturaCorporalAxilar
Parent:      CdrSignosVitales
Id:          CdrTemperaturaCorporalAxilar
Title:       "Temperatura Corporal Axilar"
Description: "Este recurso permite guardar la información de la temperatura corporal de los pacientes tomada desde la zona axilar."

* code 1..1 MS
* code ^short = "Código de la temperatura corporal."
* code =  $loinc#8328-7 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "TEMPERATURA AXILAR"

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
* valueQuantity.code from UCUMVCTemperatura
* valueQuantity.code = #Cel

Instance:    TemperaturaCorporalAxilarExample
InstanceOf:  CdrTemperaturaCorporalAxilar
Usage:       #Example
Title:       "Temperatura Corporal Axilar"
Description: "Ejemplo de la temperatura corporal de un paciente tomado desde la zonan axilar."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding =  $loinc#8328-7 "Axillary temperature"
* code.text = "TEMPERATURA AXILAR"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 36.1 'Cel' "ºC"