Profile:     CdrComposition
Parent:      DocumentoCl
Id:          CdrComposition
Title:       "Cabecera Para Documento Clínicos"
Description: "Documento clínico que almacena la información de la toma de signos vitales y optras observaciones"
* ^language = #es
* ^status = #draft
* . ^short = "Un conjunto de recursos compuestos en una única declaración clínica coherente con un certificado clínico"
* . ^definition = "Un conjunto de información relacionada con la asistencia sanitaria que se reúne en un único paquete lógico que proporciona una única declaración coherente de significado, establece su propio contexto y que tiene una atestación clínica con respecto a quién hace la declaración. Un recurso Composition define la estructura y el contenido narrativo necesarios para un documento. Sin embargo, un recurso Composition por sí solo no constituye un documento. Más bien, el recurso debe ser la primera entrada de un paquete en el que Bundle.type=documento, y cualquier otro recurso al que se haga referencia desde la composición debe incluirse como entradas posteriores en el paquete (por ejemplo, paciente, profesional, encuentro, etc.)."
* . ^comment = "Aunque esta especificación se centra en las declaraciones clínicas específicas de los pacientes, este recurso también puede aplicarse a otras declaraciones relacionadas con la atención sanitaria, como diseños de protocolos de estudio, facturas de atención sanitaria y otras actividades que no son necesariamente específicas de los pacientes o clínicas."

* id 1..1 MS
* id ^short = "Debe ser un uuid"

* extension contains VersionNumber named VersionNumber 0..1 MS

* extension[VersionNumber] ^short = "Identificador de la versión especifica para el documento."
* extension[VersionNumber] ^definition = "Identificador de la versión especifica para el 'Composition', este es un rasgo de su anteccesor CDA para identificar la versión de cada documento."
* extension[VersionNumber] ^comment = "Podría no ser utilizado por lo que quedara como optativo."

* identifier 1..1 MS
* identifier ^short = "Identificador del documento."
* status MS
* status ^short = "preliminary |final |amended |entered-in-error"
* status ^definition = "El flujo de trabajo/estado clínico de esta composición. El estado es un marcador de la situación clínica del documento."
* status ^comment = "Si un recurso composition está marcada como retirada, los compositions/documentos de la serie, o los datos de la serie de composiciones o documentos, nunca deberían mostrarse a un usuario sin estar claramente marcados como no fiables. La bandera \"entered-in-error\" es la razón por la que este elemento se etiqueta como modificador de otros elementos.   \r\n\r\nAlgunos flujos de trabajo de los informes requieren que la narrativa original de un documento final nunca se altere; en su lugar, sólo se puede añadir nueva narrativa. El recurso de composición no tiene un estado explícito para señalar explícitamente si esta regla de negocio está en efecto. Esto se gestionaría mediante una extensión si fuera necesario."
* status ^requirements = "Necesidad de poder marcar composiciones o documentos provisionales, modificados o retirados."
* type MS
* type ^short = "Tipo de composición (LOINC si es posible)."
* type ^definition = "Especifica el tipo concreto de composición (por ejemplo, Historia y Examen Físico, Resumen de Alta, Nota de Progreso). Suele equivaler al propósito de hacer la composición. En este Caso particular es un registro médico."
* type ^comment = "Para el tipo de Composition, LOINC es omnipresente y está fuertemente respaldado por HL7. La mayoría de las guías de implementación requerirán un código LOINC específico, o utilizarán LOINC como un enlace extensible."
* type ^requirements = "Elemento de metadatos clave que describe la composición, utilizado en la búsqueda/filtrado."
* type.coding 1..1 MS
* type.coding ^short = "Código defindo por un sistema terminológico"
* type.coding ^definition = "Un código referenciado por un sistema terminológico."
* type.coding ^comment = "Los códigos pueden definirse de forma muy informal en enumeraciones o listas de códigos, hasta definiciones muy formales como SNOMED CT - ver los Principios Básicos de HL7 v3 para más información.  La ordenación de los códigos no está definida y NO se utilizará para inferir su significado."
* type.coding ^requirements = "Permite codificaciones alternativas dentro de un sistema de códigos y traducciones a otros sistemas de códigos."
* type.coding.system 1.. MS
* type.coding.system ^short = "Identidad del sistema terminológico."
* type.coding.system ^definition = "La identificación del sistema de códigos que define el significado del símbolo en el código."
* type.coding.system ^comment = "El URI puede ser un OID (urn:oid:...) o un UUID (urn:uuid:...).  Los OIDs y UUIDs DEBERÁN ser referencias al registro de OIDs de HL7. De lo contrario, el URI debería proceder de la lista de URIs especiales definidos por HL7 o debería hacer referencia a alguna definición que establezca el sistema de forma clara y sin ambigüedades."
* type.coding.system ^requirements = "Hay que ser inequívoco sobre la fuente de la definición del símbolo."
* type.coding.code 1.. MS
* type.coding.code ^short = "Símbolo en la sintaxis definida por el sistema."
* type.coding.code ^definition = "Un símbolo en sintaxis definida por el sistema. El símbolo puede ser un código predefinido o una expresión en una sintaxis definida por el sistema de codificación (por ejemplo, poscoordinación)."
* type.coding.code ^comment = "Tenga en cuenta que las cadenas FHIR NO DEBEN superar 1MB de tamaño"
* type.coding.code ^requirements = "Necesidad de referirse a un código concreto en el sistema."
* type.coding.display 1.. MS
* type.coding.display ^short = "Representación definida por el sistema."
* type.coding.display ^definition = "Una representación del significado del código en el sistema, siguiendo las reglas del mismo."
* type.coding.display ^comment = "Tenga en cuenta que las cadenas FHIR NO DEBEN superar 1MB de tamaño"
* type.coding.display ^requirements = "Es necesario que el código tenga un significado legible para los lectores que no conocen el sistema."
* type = $loinc#11503-0 "Medical records"
* type.text = "Registros médicos"
* subject 1.. MS
* subject only Reference(CdrPatient)
* subject ^short = "De quién trata la composición."
* subject ^definition = "De quién o de qué trata el Composition. El recurso puede ser sobre una persona, (paciente o profesional sanitario), un dispositivo (por ejemplo, una máquina) o incluso un grupo de sujetos (como un documento sobre un rebaño de ganado, o un conjunto de pacientes que comparten una exposición común). En este caso, trata el resumen clínico de un paciente."
* subject ^comment = "Es para identificar a que paciente pertenece el resumen clínico."
* subject ^requirements = "Metadatos esenciales para la búsqueda de la composición. Identifica quién y/o de qué trata la composición/el documento."
* subject ^type.aggregation = #referenced
* subject.reference 1..
* subject.reference ^short = "Referencia literal, URL relativa, interna o absoluta"
* subject.reference ^definition = "Referencia a una ubicación en la que se encuentra el otro recurso. La referencia puede ser una referencia relativa, en cuyo caso es relativa a la URL base del servicio, o una URL absoluta que resuelve la ubicación donde se encuentra el recurso. La referencia puede ser específica de la versión o no. Si la referencia no es a un servidor FHIR RESTful, se debe asumir que es específica de la versión. Las referencias a fragmentos internos (que comienzan con \"#\") se refieren a recursos contenidos."
* subject.reference ^comment = "El uso de URLs absolutas proporciona un enfoque estable y escalable adecuado para un contexto de nube/web, mientras que el uso de referencias relativas/lógicas proporciona un enfoque flexible adecuado para su uso cuando se comercializa a través de los límites del ecosistema cerrado.   Las URL absolutas no necesitan apuntar a un servidor FHIR RESTful, aunque es el enfoque preferido. Si la URL se ajusta a la estructura \"/[tipo]/[id]\", debe asumirse que la referencia es a un servidor FHIR RESTful."
* date MS
* date ^short = "Tiempo de edición de la composición."
* date ^definition = "El tiempo de edición de la composición, cuando la composición fue modificada lógicamente por última vez por el autor."
* date ^comment = "La fecha de la última modificación de la composición puede ser posterior a la fecha en que se atestiguó el documento sin que se haya modificado."
* date ^requirements = "dateTime se utiliza para el seguimiento, la organización de las versiones y la búsqueda. Tenga en cuenta que es la hora de *autoría*. Cuando se empaqueta en un documento, [Bundle.timestamp](bundle-definitions.html#Bundle.timestamp) es la fecha de empaquetado."
* author ..1 MS
* author only Reference(CdrPractitioner)

* author ^short = "Quién fue el autor del recurso composition."
* author ^definition = "Identifica quién es el responsable de la información del recurso composition, no necesariamente quién la ha tecleado."
* author ^comment = "Las referencias SERÁN una referencia a un recurso FHIR real, y SERÁN resolubles (permitiendo el control de acceso, la indisponibilidad temporal, etc.). La resolución puede ser mediante la recuperación de la URL o, cuando sea aplicable por tipo de recurso, tratando una referencia absoluta como una URL canónica y buscándola en un registro/repositorio local."
* author ^type.aggregation = #referenced
* author.reference 1..
* author.reference ^short = "Referencia literal, URL relativa, interna o absoluta."
* author.reference ^definition = "Referencia a una ubicación en la que se encuentra el otro recurso. La referencia puede ser una referencia relativa, en cuyo caso es relativa a la URL base del servicio, o una URL absoluta que resuelve la ubicación donde se encuentra el recurso. La referencia puede ser específica de la versión o no. Si la referencia no es a un servidor FHIR RESTful, se debe asumir que es específica de la versión. Las referencias a fragmentos internos (que comienzan con \"#\") se refieren a recursos contenidos."
* author.reference ^comment = "El uso de URLs absolutas proporciona un enfoque estable y escalable adecuado para un contexto de nube/web, mientras que el uso de referencias relativas/lógicas proporciona un enfoque flexible adecuado para su uso cuando se comercializa a través de los límites del ecosistema cerrado.   Las URL absolutas no necesitan apuntar a un servidor FHIR RESTful, aunque es el enfoque preferido. Si la URL se ajusta a la estructura \"/[tipo]/[id]\", debe asumirse que la referencia es a un servidor FHIR RESTful."
* title = "Registro Clínico Electronico (Signos Vitales)" (exactly)
* title MS
* title ^short = "Nombre/título legible por humanos"
* title ^definition = "Etiqueta oficial legible por humanos de la composición."
* attester MS
* attester.mode MS
* attester.mode ^short = "personal| professional| legal| official"
* attester.mode ^definition = "Tipo de certificación que ofrece el autentificador."
* attester.mode ^comment = "Tenga en cuenta que las cadenas FHIR NO DEBEN superar 1MB de tamaño"
* attester.mode ^requirements = "Indica el nivel de autoridad del certificado."
* attester.party 1.. MS
* attester.party only Reference(CdrPractitioner)
* attester.party ^short = "Quién certificó el recurso composition"
* attester.party ^definition = "Quién certificó el recurso recurso composition de la forma especificada."
* attester.party ^comment = "Las referencias SERÁN una referencia a un recurso FHIR real, y SERÁN resolubles (permitiendo el control de acceso, la indisponibilidad temporal, etc.). La resolución puede ser mediante la recuperación de la URL o, cuando sea aplicable por tipo de recurso, tratando una referencia absoluta como una URL canónica y buscándola en un registro/repositorio local."
* attester.party ^requirements = "Identifica quién ha asumido la responsabilidad de la exactitud del contenido de la composición."
* attester.party ^type.aggregation = #referenced
* attester.party.reference 1..
* attester.party.reference ^short = "Referencia literal, URL relativa, interna o absoluta."
* attester.party.reference ^definition = "Referencia a una ubicación en la que se encuentra el otro recurso. La referencia puede ser una referencia relativa, en cuyo caso es relativa a la URL base del servicio, o una URL absoluta que resuelve la ubicación donde se encuentra el recurso. La referencia puede ser específica de la versión o no. Si la referencia no es a un servidor FHIR RESTful, se debe asumir que es específica de la versión. Las referencias a fragmentos internos (que comienzan con \"#\") se refieren a recursos contenidos."
* attester.party.reference ^requirements = "El uso de URLs absolutas proporciona un enfoque estable y escalable adecuado para un contexto de nube/web, mientras que el uso de referencias relativas/lógicas proporciona un enfoque flexible adecuado para su uso cuando se comercializa a través de los límites del ecosistema cerrado.   Las URL absolutas no necesitan apuntar a un servidor FHIR RESTful, aunque es el enfoque preferido. Si la URL se ajusta a la estructura \"/[tipo]/[id]\", debe asumirse que la referencia es a un servidor FHIR RESTful."
* custodian  MS
* custodian only Reference(CdrOrganizationHosp)
* custodian ^short = "Organización que mantiene la composición."
* custodian ^definition = "Identifica la organización o el grupo que es responsable del mantenimiento continuo y del acceso a la información sobre la composición/el documento."
* custodian ^comment = "Esto es útil cuando los documentos se derivan de una composición - proporciona orientación sobre cómo obtener la última versión del documento. Esto es opcional porque a veces el sistema de autoría no lo conoce, y puede inferirse por el contexto. Sin embargo, es importante que esta información se conozca cuando se trabaja con un documento derivado, por lo que se recomienda proporcionar un custodio."
* custodian ^requirements = "Identifica dónde ir para encontrar la versión actual, dónde informar de los problemas, etc."
* custodian ^type.aggregation = #referenced
* custodian.reference 1.. MS
* custodian.reference ^short = "Referencia literal, URL relativa, interna o absoluta."
* custodian.reference ^definition = "Referencia a una ubicación en la que se encuentra el otro recurso. La referencia puede ser una referencia relativa, en cuyo caso es relativa a la URL base del servicio, o una URL absoluta que resuelve la ubicación donde se encuentra el recurso. La referencia puede ser específica de la versión o no. Si la referencia no es a un servidor FHIR RESTful, se debe asumir que es específica de la versión. Las referencias a fragmentos internos (que comienzan con \"#\") se refieren a recursos contenidos."
* custodian.reference ^comment = "El uso de URLs absolutas proporciona un enfoque estable y escalable adecuado para un contexto de nube/web, mientras que el uso de referencias relativas/lógicas proporciona un enfoque flexible adecuado para su uso cuando se comercializa a través de los límites del ecosistema cerrado.   Las URL absolutas no necesitan apuntar a un servidor FHIR RESTful, aunque es el enfoque preferido. Si la URL se ajusta a la estructura \"/[tipo]/[id]\", debe asumirse que la referencia es a un servidor FHIR RESTful."
* section 1..* MS
* section[sectionObservacionSignosVitales] 1..1 MS
* section[sectionObservacionSignosVitales] ^short = "Signos Vitales."
* section[sectionObservacionSignosVitales] ^definition = "Esta sección esta destinada al almacenamiento de todas las observaciones consideradas signos vitales por el sistema del Servicio de Salud Araucanía Sur."
* section[sectionObservacionSignosVitales].title 1..1 MS
* section[sectionObservacionSignosVitales].title = "Signos Vitales"
* section[sectionObservacionSignosVitales].code 1..1 MS
* section[sectionObservacionSignosVitales].code ^short = "Identifiicador de la sección, en este caso se fuerza a Signos Vitales."
* section[sectionObservacionSignosVitales].code = $loinc#8716-3 
* section[sectionObservacionSignosVitales].code.text = "Signos Vitales"
* section[sectionObservacionSignosVitales].entry 1..* MS
* section[sectionObservacionSignosVitales].entry only Reference (CdrSignosVitales)

Instance:    CompositionDocumentExample
InstanceOf:  CdrComposition
Usage:       #Example
Title:       "Cabecera del Documento"
Description: "Ejemplo de un composition para crear un documento"

* identifier.value = "6fc2e782-fd56-415e-bc85-f6dcd2194ace"
* status = #final
* type = $loinc#11503-0 "Medical records"
* type.text = "Registros médicos"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* date = "2022-07-07T12:00:00-04:00"
* author = Reference(urn:uuid:03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50)
* author.display = "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)"
* title = "Registro Clínico Electronico (Signos Vitales)"
* attester.mode = #professional
* attester.party = Reference(urn:uuid:03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50)
* attester.party.display = "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)" 
* custodian = Reference(urn:uuid:30561296-f509-40d1-878a-1d4f9e71365d)
* custodian.display = "HOSPITAL DR. HERNAN HENRIQUEZ ARAVENA (TEMUCO)"
* section[sectionObservacionSignosVitales].title = "Signos Vitales"
* section[sectionObservacionSignosVitales].code.coding = $loinc#8716-3 "Vital signs"
* section[sectionObservacionSignosVitales].code.text = "Signos Vitales"
* section[sectionObservacionSignosVitales].entry[0] = Reference(urn:uuid:30561296-f509-40d1-878a-1d42432ffd0a)
* section[sectionObservacionSignosVitales].entry[0].display = "67.6 kg (Details: UCUM code kg = 'kg')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(urn:uuid:84f42b61-d690-45e6-87f8-0672432ffd0a)
* section[sectionObservacionSignosVitales].entry[=].display = "165 CMS (Details: UCUM code cm = 'cm')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(urn:uuid:13d97bbc-7a58-49e9-bf12-4add450b605a)
* section[sectionObservacionSignosVitales].entry[=].display = "24.6 kg/m2 (Details: UCUM code kg/m2 = 'kg/m2')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(urn:uuid:0b06f501-5465-4b31-b106-56f73cc0ef99)
* section[sectionObservacionSignosVitales].entry[=].display = "Normal (Escala Nutricional Para Adultos#Normal)"
* section[sectionObservacionSignosVitales].entry[+] = Reference(urn:uuid:df1a8537-56a2-4aec-aa6c-f6f537e874e7)
* section[sectionObservacionSignosVitales].entry[=].display = "29.3 wk (Details: UCUM code wk = 'wk')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(urn:uuid:432b12d6-5a42-47ca-8024-495309843029)
* section[sectionObservacionSignosVitales].entry[=].display = "31 (Details: UCUM code cm = 'cm')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(urn:uuid:4bb12bcf-44f1-4af0-9deb-5688de0f0230)
* section[sectionObservacionSignosVitales].entry[=].display = "155 /min (Details: UCUM code /min = '/min')"
* section[sectionObservacionSignosVitales].entry[+] = Reference(urn:uuid:0549e5ba-54da-4dc8-8217-73f4ab458787)
* section[sectionObservacionSignosVitales].entry[=].display = "+ (Resultados de un Movimiento Fetal#+)"