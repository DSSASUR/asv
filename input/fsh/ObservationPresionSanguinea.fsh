Profile:     CdrPrensionSanguinea
Parent:      CdrSignosVitales
Id:          CdrPrensionSanguinea
Title:       "Presión Sanguínea"
Description: "Este recurso permite guardar la información de la presión sanguinea de los pacientes."

* code 1..1 MS
* code ^short = "Código de la Presión Sanguinea."
* code =  $loinc#85354-9 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "Presión Arterial"

* component 2..* MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = ""
* component ^slicing.ordered = false
* component contains sistolica 1..1 MS and distolica 1..1 MS

* component[sistolica] ^short = "Presión Sistólica."
* component[sistolica].code ^short = "Presión Sistólica."
* component[sistolica].code = $loinc#8480-6 "Systolic blood pressure"
* component[sistolica].code.text = "PRESION SISTOLICA"

* component[sistolica].valueQuantity 1..1 MS

* component[sistolica].valueQuantity.value 1..1 MS
* component[sistolica].valueQuantity.value ^short = "Valor numérico."

* component[sistolica].valueQuantity.unit 1..1 MS
* component[sistolica].valueQuantity.unit ^short = "Unidad representativa."

* component[sistolica].valueQuantity.system 1..1 MS
* component[sistolica].valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad."
* component[sistolica].valueQuantity.system = "http://unitsofmeasure.org"

* component[sistolica].valueQuantity.code 1..1 MS
* component[sistolica].valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* component[sistolica].valueQuantity.code = #mm[Hg]

* component[distolica] ^short = "Presión Distólica."
* component[distolica].code ^short = "Presión Distólica."
* component[distolica].code = $loinc#8462-4 "Diastolic blood pressure"
* component[distolica].code.text = "PRESION DISTOLICA"

* component[distolica].valueQuantity 1..1 MS

* component[distolica].valueQuantity.value 1..1 MS
* component[distolica].valueQuantity.value ^short = "Valor numérico."

* component[distolica].valueQuantity.unit 1..1 MS
* component[distolica].valueQuantity.unit ^short = "Unidad representativa."

* component[distolica].valueQuantity.system 1..1 MS
* component[distolica].valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad."
* component[distolica].valueQuantity.system = "http://unitsofmeasure.org"

* component[distolica].valueQuantity.code 1..1 MS
* component[distolica].valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* component[distolica].valueQuantity.code = #mm[Hg]



Instance:    PrensionSanguineaExample
InstanceOf:  CdrPrensionSanguinea
Usage:       #Example
Title:       "Presión Sanguínea"
Description: "Ejemplo de la presión sanguinea de un paciente."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding =  $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Presión Arterial"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"

* component[sistolica].code.coding = $loinc#8480-6 "Systolic blood pressure"
* component[sistolica].code.text = "PRESION SISTOLICA"
* component[sistolica].valueQuantity = 110 'mm[Hg]' "mmHg"

* component[distolica].code.coding = $loinc#8462-4 "Diastolic blood pressure"
* component[distolica].code.text = "PRESION DISTOLICA"
* component[distolica].valueQuantity = 80 'mm[Hg]' "mmHg"
