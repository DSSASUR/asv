Profile:     CdrGlicemia
Parent:      CdrSignosVitales
Id:          CdrGlicemia
Title:       "Glicemia en Sangre"
Description: "Este recurso permite guardar la información de la glicemia en sangre de los pacientes."

* code 1..1 MS
* code ^short = "Código de saturación de oxígeno"
* code =  $loinc#2339-0 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "GLICEMIA"

* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor numérico"

* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "Unidad representativa"

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad"
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code = #mg/dl

Instance:    GlicemiaExample
InstanceOf:  CdrGlicemia
Usage:       #Example
Title:       "Glicemia en Sangre"
Description: "Ejemplo del nivel de glicemia de un paciente"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding =  $loinc#2339-0 "Glucose [Mass/volume] in Blood"
* code.text = "GLICEMIA"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 140 'mg/dl' "mg/dl"