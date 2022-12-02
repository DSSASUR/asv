Profile:     CdrTalla
Parent:      CdrSignosVitales
Id:          CdrTalla
Title:       "Talla"
Description: "Este recurso permite guardar la información del talla de los pacientes."

* code 1..1 MS
* code ^short = "Código del talla."
* code =  $loinc#8304-8 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "TALLA"

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
* valueQuantity.code from UCUMVCTalla
* valueQuantity.code = #cm

Instance:    TallaExample
InstanceOf:  CdrTalla
Usage:       #Example
Title:       "Talla"
Description: "Ejemplo de la altura en un paciente."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* code = $loinc#8304-8 "Body height special circumstances"
* code.text = "TALLA"
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 165 'cm' "CMS"

