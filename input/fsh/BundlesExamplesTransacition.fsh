Instance:    ExampleTransaction
InstanceOf:  CdrTransactionPublicacion
Usage:       #example
Title:       "Publicación de Recursos"
Description: "Ejemplo de una transacción de los recursos enviados a un servidor para crear un documento posteriormente"

* identifier.value = "6fc2e782-fd56-415e-bc85-f6dcdwrewerwe"
* type = #transaction
* timestamp = "2022-07-07T12:00:00-04:00"
* entry[0].fullUrl = "urn:uuid:4745debb-35e6-42f5-8094-65f9b47dcc94"
* entry[=].resource = 4745debb-35e6-42f5-8094-65f9b47dcc94
* entry[=].request.method = #PUT
* entry[=].request.url = "Composition/4745debb-35e6-42f5-8094-65f9b47dcc94"
* entry[+].fullUrl = "urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf"
* entry[=].resource = 56851b4b-9867-4b72-9a2c-3a1c8c1cbddf
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/56851b4b-9867-4b72-9a2c-3a1c8c1cbddf"
* entry[+].fullUrl = "urn:uuid:30561296-f509-40d1-878a-1d42432ffd0a"
* entry[=].resource = 30561296-f509-40d1-878a-1d42432ffd0a
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/30561296-f509-40d1-878a-1d42432ffd0a"
* entry[+].fullUrl = "urn:uuid:84f42b61-d690-45e6-87f8-0672432ffd0a"
* entry[=].resource = 84f42b61-d690-45e6-87f8-0672432ffd0a
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/84f42b61-d690-45e6-87f8-0672432ffd0a"
* entry[+].fullUrl = "urn:uuid:13d97bbc-7a58-49e9-bf12-4add450b605a"
* entry[=].resource = 13d97bbc-7a58-49e9-bf12-4add450b605a
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/13d97bbc-7a58-49e9-bf12-4add450b605a"
* entry[+].fullUrl = "urn:uuid:0b06f501-5465-4b31-b106-56f73cc0ef99"
* entry[=].resource = 0b06f501-5465-4b31-b106-56f73cc0ef99
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/0b06f501-5465-4b31-b106-56f73cc0ef99"
* entry[+].fullUrl = "urn:uuid:df1a8537-56a2-4aec-aa6c-f6f537e874e7"
* entry[=].resource = df1a8537-56a2-4aec-aa6c-f6f537e874e7
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/df1a8537-56a2-4aec-aa6c-f6f537e874e7"
* entry[+].fullUrl = "urn:uuid:432b12d6-5a42-47ca-8024-495309843029"
* entry[=].resource = 432b12d6-5a42-47ca-8024-495309843029
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/432b12d6-5a42-47ca-8024-495309843029"
* entry[+].fullUrl = "urn:uuid:4bb12bcf-44f1-4af0-9deb-5688de0f0230"
* entry[=].resource = 4bb12bcf-44f1-4af0-9deb-5688de0f0230
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/4bb12bcf-44f1-4af0-9deb-5688de0f0230"
* entry[+].fullUrl = "urn:uuid:0549e5ba-54da-4dc8-8217-73f4ab458787"
* entry[=].resource = 0549e5ba-54da-4dc8-8217-73f4ab458787
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/0549e5ba-54da-4dc8-8217-73f4ab458787"
* entry[+].fullUrl = "urn:uuid:03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50"
* entry[=].resource = 03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50"
* entry[+].fullUrl = "urn:uuid:30561296-f509-40d1-878a-1d4f9e71365d"
* entry[=].resource = 30561296-f509-40d1-878a-1d4f9e71365d
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/30561296-f509-40d1-878a-1d4f9e71365d"
* entry[+].fullUrl = "urn:uuid:8bae75f7-319a-46ca-87b3-15906ec267a7"
* entry[=].resource = 8bae75f7-319a-46ca-87b3-15906ec267a7
* entry[=].request.method = #PUT
* entry[=].request.url = "Bundle/8bae75f7-319a-46ca-87b3-15906ec267a7"
* entry[+].fullUrl = "urn:uuid:0200f382-701a-4de5-a823-1c44d8d60a4a"
* entry[=].resource = 0200f382-701a-4de5-a823-1c44d8d60a4a
* entry[=].request.method = #PUT
* entry[=].request.url = "Provenance/0200f382-701a-4de5-a823-1c44d8d60a4a"

Instance:    ExampleRecuperacion
InstanceOf:  CdrTransactionRecuperacion
Usage:       #example
Title:       "Recuperación de Recursos"
Description: "Ejemplo para recuperar los recursos necesarios en el momento de crear un documento"

* identifier.value = "6fc2e782-fd56-415e-bc85-f6dcdwrewerwe"
* type = #transaction
* timestamp = "2022-07-07T12:00:01-04:00"
* entry[0].request.method = #GET
* entry[=].request.url = "Composition/4745debb-35e6-42f5-8094-65f9b47dcc94"
* entry[+].request.method = #GET
* entry[=].request.url = "Patient/56851b4b-9867-4b72-9a2c-3a1c8c1cbddf"
* entry[+].request.method = #GET
* entry[=].request.url = "Practitioner/03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50"
* entry[+].request.method = #GET
* entry[=].request.url = "Organization/30561296-f509-40d1-878a-1d4f9e71365d"
* entry[+].request.method = #GET
* entry[=].request.url = "Observation/30561296-f509-40d1-878a-1d42432ffd0a"
* entry[+].request.method = #GET
* entry[=].request.url = "Observation/84f42b61-d690-45e6-87f8-0672432ffd0a"
* entry[+].request.method = #GET
* entry[=].request.url = "Observation/13d97bbc-7a58-49e9-bf12-4add450b605a"
* entry[+].request.method = #GET
* entry[=].request.url = "Observation/0b06f501-5465-4b31-b106-56f73cc0ef99"
* entry[+].request.method = #GET
* entry[=].request.url = "Observation/df1a8537-56a2-4aec-aa6c-f6f537e874e7"
* entry[+].request.method = #GET
* entry[=].request.url = "Observation/432b12d6-5a42-47ca-8024-495309843029"
* entry[+].request.method = #GET
* entry[=].request.url = "Observation/4bb12bcf-44f1-4af0-9deb-5688de0f0230"
* entry[+].request.method = #GET
* entry[=].request.url = "Observation/0549e5ba-54da-4dc8-8217-73f4ab458787"

Instance:    ExampleRecuperacionBase
InstanceOf:  CdrTransactionRecuperacion
Usage:       #example
Title:       "Recuperación de Recursos Base"
Description: "Estos son los recursos bases necesarios para crear un documento, que se deberian encontrar dentro del servido FHIR."
* identifier.value = "6fc2e782-fd56-415e-bc85-f1231231sd"
* type = #transaction
* timestamp = "2022-07-07T11:40:00-04:00"
* entry[0].request.method = #GET
* entry[=].request.url = "Patient?identifier=19142323-5"
* entry[+].request.method = #GET
* entry[=].request.url = "Practitioner?identifier=19797094-4"
* entry[+].request.method = #GET
* entry[=].request.url = "Organization?identifier=124509"


Instance:   4745debb-35e6-42f5-8094-65f9b47dcc94
InstanceOf: CdrComposition
Usage:      #inline

* identifier.value = "6fc2e782-fd56-415e-bc85-f6dcd2194ace"
* status = #final
* type.coding = $loinc#11503-0 "Medical records"
* type.text = "Registros médicos"
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* date = "2022-07-07T12:00:00-04:00"
* author = Reference(03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50)
* title = "Registro Clínico Electronico (Signos Vitales)"
* attester.mode = #professional
* attester.party = Reference(03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50)
* attester.party.display = "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)"
* custodian = Reference(30561296-f509-40d1-878a-1d4f9e71365d)
* custodian.display = "HOSPITAL DR. HERNAN HENRIQUEZ ARAVENA (TEMUCO)"
* section[sectionObservacionSignosVitales].title = "Signos Vitales"
* section[sectionObservacionSignosVitales].code.coding = $loinc#8716-3 "Vital signs"
* section[sectionObservacionSignosVitales].code.text = "Signos Vitales"
* section[sectionObservacionSignosVitales].entry[0] = Reference(30561296-f509-40d1-878a-1d42432ffd0a)
* section[sectionObservacionSignosVitales].entry[0].display = "67.6 kg (Details: UCUM code kg = 'kg')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(84f42b61-d690-45e6-87f8-0672432ffd0a)
* section[sectionObservacionSignosVitales].entry[=].display = "165 CMS (Details: UCUM code cm = 'cm')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(13d97bbc-7a58-49e9-bf12-4add450b605a)
* section[sectionObservacionSignosVitales].entry[=].display = "24.6 kg/m2 (Details: UCUM code kg/m2 = 'kg/m2')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(0b06f501-5465-4b31-b106-56f73cc0ef99)
* section[sectionObservacionSignosVitales].entry[=].display = "Normal (Escala Nutricional Para Adultos#Normal)"
* section[sectionObservacionSignosVitales].entry[+] = Reference(df1a8537-56a2-4aec-aa6c-f6f537e874e7)
* section[sectionObservacionSignosVitales].entry[=].display = "29.3 wk (Details: UCUM code wk = 'wk')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(432b12d6-5a42-47ca-8024-495309843029)
* section[sectionObservacionSignosVitales].entry[=].display = "31 CMS (Details: UCUM code cm = 'cm')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(4bb12bcf-44f1-4af0-9deb-5688de0f0230)
* section[sectionObservacionSignosVitales].entry[=].display = "155 /min (Details: UCUM code /min = '/min')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(0549e5ba-54da-4dc8-8217-73f4ab458787)
* section[sectionObservacionSignosVitales].entry[=].display = "+ (Resultados de un Movimiento Fetal#+)"

Instance:   56851b4b-9867-4b72-9a2c-3a1c8c1cbddf
InstanceOf: CdrPatient
Usage:      #inline

* extension[nacionalidad] = nacionalidadE2
* extension[IdentidadDeGenero] = IdentidadGenero2
* extension[Prevision] = PrevisionE2
* extension[PuebloOriginario] = PuebloOriginarioE2
* extension[NivelInstruccion] = NivelInstruccionE2
* extension[Ocupacion] = OcupacionE2
* identifier[identificador].use = #usual
* identifier[identificador].type.extension = nacionalidadE2
* identifier[identificador].type.coding = $CodigosDNI#NNCHL "Chile"
* identifier[identificador].system = "https://api.registrocivil.cl/rut"
* identifier[identificador].value = "19142323-5"
* identifier[BDUP].use = #official
* identifier[BDUP].system = "http://ssasur.cl/BDUP"
* identifier[BDUP].value = "123412"
* identifier[ficha].use = #secondary
* identifier[ficha].value = "6434332"
* identifier[ficha].assigner = Reference(30561296-f509-40d1-878a-1d4f9e71365d)
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Martinez"
* name[NombreOficial].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* name[NombreOficial].family.extension.valueString = "Morales"
* name[NombreOficial].given[0] = "Victoria"
* name[NombreOficial].given[+] = "Esperanza"
* telecom[0].system = #phone
* telecom[=].value = "56978841639"
* telecom[+].system = #email
* telecom[=].value = "VCMAR@MAIL.COM"
* gender = #female
* birthDate = "1996-11-11"
* address.use = #home
* address.line = "CALLE M Depto.: NO, LA JUNTA"
* address.city.extension[ComunasCl] = comuna
* address.district.extension[ProvinciasCl] = provincia
* address.state.extension[RegionesCl] = region
* address.country.extension[CodigoPaises] = pais
* maritalStatus = EstadoCivilCS#01 "SOLTERO(A)"
* contact.extension[IdContacto].url = "https://hl7chile.cl/fhir/ig/corecl/StructureDefinition/IdContacto"
* contact.extension[IdContacto].extension[tutId].url = "tutId"
* contact.extension[IdContacto].extension[tutId].valueIdentifier.type = $CodigosDNI#NNCHL "Chile"
* contact.extension[IdContacto].extension[tutId].valueIdentifier.system = "https://api.registrocivil.cl/rut"
* contact.extension[IdContacto].extension[tutId].valueIdentifier.value = "19142323-5"
* contact.extension[IdContacto].extension[docProc].url = "docProc"
* contact.extension[IdContacto].extension[docProc].valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"
* contact.relationship = $v2-0131#C "Emergency Contact"
* contact.name.use = #official
* contact.name.family = "Martinez"
* contact.name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family"
* contact.name.family.extension.valueString = "Morales"
* contact.name.given[0] = "Victoria"
* contact.name.given[+] = "Esperanza"

Instance: 03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50
InstanceOf: CdrPractitioner
Usage:      #inline

* identifier[RUN].use = #official
* identifier[RUN].system = "https://api.registrocivil.cl/rut"
* identifier[RUN].value = "19797094-4"
* identifier[RNPI].use = #secondary
* identifier[RNPI].system = "https://rnpi.superdesalud.gob.cl/"
* identifier[RNPI].value = "692550"
* active = true
* name.use = #official
* name.family = "JUNGJOHANN"
* name.family.extension = PrestadorSegundoApellido
* name.given[0] = "MARIA"
* name.given[+] = "MAGDALENA"
* gender = #female
* birthDate = "1998-01-05"
//* qualification.code.coding.system = "https://api.minsal.cl/v1/catalogos/profesiones/"
* qualification[Cert].code.coding = TitulosProfesionalesPrestadoresCS#05 "Matronas(es)"
* qualification[Cert].code.text = "Certificado(s)"

Instance:   PrestadorSegundoApellido
InstanceOf: SegundoApellido
Usage:      #inline

* valueString = "SILVA"


Instance:   30561296-f509-40d1-878a-1d4f9e71365d
InstanceOf: CdrOrganizationHosp
Usage:      #inline

* identifier[ssasur].use = #official
* identifier[ssasur].system = "http://ssasur.cl/CodigoHospital"
* identifier[ssasur].value = "121109"
* active = true
* name = "HOSPITAL DR. HERNAN HENRIQUEZ ARAVENA (TEMUCO)"
* alias = "TEMUCO HOSP."
* address.use = #work
* address.line = "Bilbao S/N"
// * address.city.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ComunasCl"
// * address.city.extension.valueCodeableConcept = CSCodigosComunaCL#09117 
// * address.district.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/ProvinciasCl"
// * address.district.extension.valueCodeableConcept = CSCodigosProvinciasCL#091
// * address.state.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/RegionesCl"
// * address.state.extension.valueCodeableConcept = CSCodigosRegionesCL#09
// * address.country.extension.url = "https://hl7chile.cl/fhir/ig/CoreCL/StructureDefinition/CodigoPaises"
// * address.country.extension.valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"
* address.city = #09117
* address.district = #091
* address.state = #09
* address.country = #152

Instance:   30561296-f509-40d1-878a-1d42432ffd0a
InstanceOf: CdrPeso
Usage:      #inline

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#3141-9 "Body weight Measured"
* code.text = "PESO"
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 67.6 'kg' "kg"

Instance:   84f42b61-d690-45e6-87f8-0672432ffd0a
InstanceOf: CdrTalla
Usage:      #inline

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* code = $loinc#8304-8 "Body height special circumstances"
* code.text = "TALLA"
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 165 'cm' "CMS"

Instance:   13d97bbc-7a58-49e9-bf12-4add450b605a
InstanceOf: CdrIMC
Usage:      #inline

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* code.text = "INDICE DE MASA CORPORAL"
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 24.6 'kg/m2' "kg/m2"

Instance:   0b06f501-5465-4b31-b106-56f73cc0ef99
InstanceOf: CdrEstadoNutricional
Usage:      #inline

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#75305-3 "Nutrition status"
* code.text = "DIAGNOSTICO NUTRICIONAL ADULTO"
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueCodeableConcept = EscalaNutricionalAdulto#Normal "Normal"


Instance:   df1a8537-56a2-4aec-aa6c-f6f537e874e7
InstanceOf: CdrSemanasECO
Usage:      #inline

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#49051-6 "Gestational age in weeks"
* code.text = "SEMANAS ECO"
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 29.3 'wk' "wk"

Instance:   432b12d6-5a42-47ca-8024-495309843029
InstanceOf: CdrAlturaUterina
Usage:      #inline

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#11881-0 "Uterus Fundal height Tape measure"
* code.text = "ALTURA UTERINA"
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 31 'cm' "CMS"

Instance:   4bb12bcf-44f1-4af0-9deb-5688de0f0230
InstanceOf: CdrRitmoCardiacoFetal
Usage:      #inline

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#55283-6 "Fetal Heart rate"
* code.text = "LATIDOS CARDIO - FETALES"
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 155 '/min' "pp/min"

Instance:   0549e5ba-54da-4dc8-8217-73f4ab458787
InstanceOf: CdrMovimientoFetal
Usage:      #inline

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#57088-7 "Fetal Movement - Reported"
* code.text = "MF"
* subject = Reference(56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueCodeableConcept = EscalaMovimientoFetalCS#+

Instance:   nacionalidadE2
InstanceOf: CodigoPaises
Usage:      #inline

* valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"

Instance: IdentidadGenero2
InstanceOf: IdentidadDeGenero
Usage:      #inline

* valueCodeableConcept = GenderIdentityCs#02 "Femenino"

Instance:   PrevisionE2
InstanceOf: Prevision
Usage:      #inline

* extension[prevision].valueCoding = SistemaDePrevisionCS#01 "FONASA"
* extension[tramoisapre].valueCoding = TramosDeFonasaCS#B "Tramo B"

Instance:   PuebloOriginarioE2
InstanceOf: PuebloOriginario
Usage:      #inline

* valueCodeableConcept.coding = PueblosOriginariosCS#96 "NINGUNO"

Instance:   NivelInstruccionE2
InstanceOf: NivelInstruccion
Usage:      #inline

* valueCodeableConcept.coding = NivelInstruccionCS#03 "MEDIA"

Instance:   OcupacionE2
InstanceOf: Ocupacion
Usage:      #inline

* valueCodeableConcept.coding = OcupacionCS#414 "DUEÑA DE CASA"

Instance:   comuna
InstanceOf: ComunasCl
Usage:      #inline

* valueCodeableConcept = CSCodigosComunaCL#09117

Instance:   provincia
InstanceOf: ProvinciasCl
Usage:      #inline

* valueCodeableConcept = CSCodigosProvinciasCL#091

Instance:   region
InstanceOf: RegionesCl
Usage:      #inline

* valueCodeableConcept = CSCodigosRegionesCL#09

Instance:   pais
InstanceOf: CodigoPaises
Usage:      #inline
* valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"

Instance: 0200f382-701a-4de5-a823-1c44d8d60a4a
InstanceOf: CdrProvenance
Usage: #inline
* target[0] = Reference(urn:uuid:4745debb-35e6-42f5-8094-65f9b47dcc94)
* target[+] = Reference(urn:uuid:30561296-f509-40d1-878a-1d42432ffd0a)
* target[+] = Reference(urn:uuid:84f42b61-d690-45e6-87f8-0672432ffd0a)
* target[+] = Reference(urn:uuid:13d97bbc-7a58-49e9-bf12-4add450b605a)
* target[+] = Reference(urn:uuid:0b06f501-5465-4b31-b106-56f73cc0ef99)
* target[+] = Reference(urn:uuid:df1a8537-56a2-4aec-aa6c-f6f537e874e7)
* target[+] = Reference(urn:uuid:432b12d6-5a42-47ca-8024-495309843029)
* target[+] = Reference(urn:uuid:4bb12bcf-44f1-4af0-9deb-5688de0f0230)
* target[+] = Reference(urn:uuid:0549e5ba-54da-4dc8-8217-73f4ab458787)
* target[+] = Reference(urn:uuid:8bae75f7-319a-46ca-87b3-15906ec267a7)
* recorded = "2022-11-23T14:31:22.900+00:00"
* activity =  http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "attester"
* agent.who = Reference(urn:uuid:03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50) "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* signature.when = "2022-11-23T14:31:22.903+00:00"
* signature.who = Reference(urn:uuid:03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50) "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)"
* signature.sigFormat = #application/jose
* signature.data = "QmVhcmVyIEJxdGdUb25BN0VSTmVlcFc3ZDgyNXJqeXZCUkpnNk5R"

Instance:     8bae75f7-319a-46ca-87b3-15906ec267a7
InstanceOf:   CdrDocument
Usage:        #inline

* identifier.system = "http://api.ssasur.cl/signosvitales"
* identifier.value = "6fc2e782-fd56-415e-bc85-f6dcd2194ace"
* type = #document
* timestamp = "2022-07-07T12:00:00-04:00"
* entry[0].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Composition/4745debb-35e6-42f5-8094-65f9b47dcc94"
* entry[=].resource = 4745debb-35e6-42f5-8094-65f9b47dcc94
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Patient/56851b4b-9867-4b72-9a2c-3a1c8c1cbddf"
* entry[=].resource = 56851b4b-9867-4b72-9a2c-3a1c8c1cbddf
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Practitioner/03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50"
* entry[=].resource = 03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Organization/30561296-f509-40d1-878a-1d4f9e71365d"
* entry[=].resource = 30561296-f509-40d1-878a-1d4f9e71365d
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Observation/30561296-f509-40d1-878a-1d42432ffd0a"
* entry[=].resource = 30561296-f509-40d1-878a-1d42432ffd0a
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Observation/84f42b61-d690-45e6-87f8-0672432ffd0a"
* entry[=].resource = 84f42b61-d690-45e6-87f8-0672432ffd0a
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Observation/13d97bbc-7a58-49e9-bf12-4add450b605a"
* entry[=].resource = 13d97bbc-7a58-49e9-bf12-4add450b605a
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Observation/0b06f501-5465-4b31-b106-56f73cc0ef99"
* entry[=].resource = 0b06f501-5465-4b31-b106-56f73cc0ef99
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Observation/df1a8537-56a2-4aec-aa6c-f6f537e874e7"
* entry[=].resource = df1a8537-56a2-4aec-aa6c-f6f537e874e7
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Observation/432b12d6-5a42-47ca-8024-495309843029"
* entry[=].resource = 432b12d6-5a42-47ca-8024-495309843029
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Observation/4bb12bcf-44f1-4af0-9deb-5688de0f0230"
* entry[=].resource = 4bb12bcf-44f1-4af0-9deb-5688de0f0230
* entry[+].fullUrl = "https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Observation/0549e5ba-54da-4dc8-8217-73f4ab458787"
* entry[=].resource = 0549e5ba-54da-4dc8-8217-73f4ab458787
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* signature.when = "2022-11-23T14:31:22.903+00:00"
* signature.who = Reference(https://cdr-api.ssasur.cl/fhir/prod1/baseR4/Practitioner/03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50)
* signature.who.display = "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)"
* signature.sigFormat = #application/jose
* signature.data = "QmVhcmVyIEJxdGdUb25BN0VSTmVlcFc3ZDgyNXJqeXZCUkpnNk5R"
