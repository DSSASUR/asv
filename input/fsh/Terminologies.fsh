Alias: $v2-0136 = http://terminology.hl7.org/ValueSet/v2-0136
Alias: $v2-0203 = http://terminology.hl7.org/ValueSet/v2-0203
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: SVHL7 = http://hl7.org/fhir/ValueSet/observation-vitalsignresult
Alias: CodPais = https://hl7chile.cl/fhir/ig/CoreCL/ValueSet/CodPais
Alias: VSCodigosRegionesCL = https://hl7chile.cl/fhir/ig/CoreCL/ValueSet/VSCodigosRegionesCL
Alias: VSCodigosProvinciasCL = https://hl7chile.cl/fhir/ig/CoreCL/ValueSet/VSCodigosProvinciasCL
Alias: VSCodigosComunaCL = https://hl7chile.cl/fhir/ig/CoreCL/ValueSet/VSCodigosComunaCL
Alias: CSCodigosRegionesCL = https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodRegionCL
Alias: CSCodigosProvinciasCL = https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodProvinciasCL
Alias: CSCodigosComunaCL = 	https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodComunasCL
Alias: $CodigosDNI = https://hl7chile.cl/fhir/ig/CoreCL/CodeSystem/CSCodigoDNI
Alias: maritalStatusVS = http://hl7.org/fhir/ValueSet/marital-status
Alias: UCUMVC = http://hl7.org/fhir/ValueSet/ucum-vitals-common
Alias: UCUMVCTemperatura = 	http://hl7.org/fhir/ValueSet/ucum-bodytemp
Alias: UCUMVCPeso = http://hl7.org/fhir/ValueSet/ucum-bodyweight
Alias: UCUMVCTalla = http://hl7.org/fhir/ValueSet/ucum-bodylength
Alias: Resourcetype = http://hl7.org/fhir/ValueSet/resource-types
Alias: ResourcetypeCs = http://hl7.org/fhir/resource-types

ValueSet: SignosVitales
Id: SignosVitalesSsasur
Title: "Signos Vitales"
Description: "Signos vitales tomados del pacientes"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true

* codes from valueset SVHL7

// Signos vitales códigos LOINC
* $loinc#8480-6 "Sistólica intravascular"
* $loinc#8462-4 "Diastólica intravascular"
* $loinc#8867-4 "Ritmo cardiaco"
* $loinc#9279-1 "Respiraciones"
* $loinc#8328-7 "Temperatura corporal axilar"
* $loinc#8332-9 "Temperatura corporal recto"
* $loinc#8331-1 "Temperatura corporal boca"
* $loinc#20564-1 "Saturación de oxígeno"
* $loinc#2339-0 "Glucosa"
* $loinc#80316-3 "Escala de dolor"
* $loinc#9269-2 "Puntaje de coma de Glasgow"
* $loinc#75305-3 "Estado Nutricional"
* $loinc#3141-9 "Peso Corporal"
* $loinc#8304-8 "Talla Corporal"
* $loinc#8287-5 "Circunferencia occipital-frontal"
* $loinc#56086-2 "Circunferencia Abdomen"
* $loinc#39156-5 "Índice de masa corporal"
* $loinc#11881-0 "Altura del fondo uterino"
* $loinc#55283-6 "Ritmo cardiaco fetal"
* $loinc#8280-0 "Circunferencia en el ombligo"
* $loinc#11779-6 "estimado a partir del último período menstrual"
* $loinc#49051-6 "Edad gestacional en W"
* $loinc#57088-7 "Movimiento Feto Informado"

// Signos vitales códigos Snmomed
* $SCT#1153604005 "Puntaje Z de altura corporal para la edad"
* $SCT#1153593003 "Puntaje z de peso para la edad"
* $SCT#1153600001 "Puntaje z de peso para la altura"
* $SCT#248217000 "Estado de conciencia y alerta (entidad observable)"
* $SCT#224977004 "Sensación de tristeza"

ValueSet: SistemaDePrevisionVS
Id: Sistema-PrevisionVS
Title: "Sistema de Previsión"
Description: "Códificación de los sistemas de previsión utilizados para financiar la salud de los pacientes"
* ^experimental = true
* include codes from system SistemaDePrevisionCS

CodeSystem: SistemaDePrevisionCS
Id: Sistema-Prevision
Title: "Sistema de Previsión"
Description: "Códificación de los sistemas de previsión utilizados para financiar la salud de los pacientes"
* ^caseSensitive = true
* ^experimental = true

* #01	"FONASA"
* #02	"ISAPRE"
* #03	"CAPREDENA"
* #04	"DIPRECA"
* #05	"SISA"
* #96	"NINGUNA"
* #99	"DESCONOCIDO"

ValueSet: TramosOIsapresVS
Id: Tramos-IsapresVS
Title: "Tramos de FONASA o Isapre"
Description: "Tramos utilizados por fonasa o Isapre del paciente"
* ^experimental = true

* include codes from system TramosDeFonasaCS
* include codes from system AseguradoraCS

CodeSystem: AseguradoraCS
Id: AseguradoraCS
Title: "Aseguradora Particular del Paciente"
Description: "Aseguradora particular utiliza el paciente"
* ^caseSensitive = true
* ^experimental = true

* #01 "SIN PREVISION(PARTICULAR)"
* #06 "DIPRECA (CARABINEROS)"
* #07 "CAPREDENA(FF.AA.)"
* #08 "BANMEDICA S.A."
* #09 "CHUQUICAMATA LTDA."
* #10 "COLMENA GOLDEN CROSS S.A."
* #11 "CONSALUD S.A."
* #12 "CRUZ BLANCA S.A."
* #13 "CRUZ DEL NORTE LTDA."
* #15 "FUNDACION LTDA."
* #16 "FUSAT LTDA."
* #17 "MASVIDA S.A."
* #18 "RIO BLANCO LTDA."
* #19 "SAN LORENZO LTDA."
* #20 "VIDA TRES S.A."

CodeSystem: TramosDeFonasaCS
Id: Tramos-FONASA
Title: "Tramos de FONASA"
Description: "Tramos utilizados por fonasa"
* ^caseSensitive = true
* ^experimental = true

* #A "Tramo A"
* #B "Tramo B"
* #C "Tramo C"
* #D "Tramo D"

ValueSet: PueblosOriginariosVS
Id: Pueblos-PueblosOriginariosVS
Title: "Codificación de Pueblos Originarios"
Description: "Codificación de los pueblos originarios"
* ^experimental = true

* include codes from system PueblosOriginariosCS

CodeSystem: PueblosOriginariosCS
Id: Pueblos-PueblosOriginariosCS
Title: "Codificación de Pueblos Originarios"
Description: "Codificación de los pueblos originarios"
* ^caseSensitive = true
* ^experimental = true

* #01 "MAPUCHE"
* #02 "AYMARA"
* #03 "RAPA NUI (PASCUENSE)"
* #04 "LICAN ANTAI (ATACAMEÑO)"
* #05 "QUECHUA"
* #06 "COLLA"
* #07 "DIAGUITA"
* #08 "KAWÉSQAR"
* #09 "YAGÁN (YÁMANA)"
* #10 "OTRO (ESPECIFICAR)"
* #96 "NINGUNO"

ValueSet: NivelInstruccionVS
Id: Nivel-InstruccionVS
Title: "Nivel de Instrucción"
Description: "Codificación del nivel de instrucción del paciente"
* ^experimental = true

* include codes from system NivelInstruccionCS


CodeSystem: NivelInstruccionCS
Id: Nivel-InstruccionCS
Title: "Nivel de Instrucción"
Description: "Codificación del nivel de instrucción del paciente"
* ^caseSensitive = true
* ^experimental = true

* #01 "PREBÁSICA"
* #02 "BÁSICA"
* #03 "MEDIA"
* #04 "TÉCNICO DE NIVEL SUPERIOR"
* #05 "PROFESIONAL UNIVERSITARIO"
* #06 "SIN INSTRUCCIÓN"
* #97 "NO RECUERDA"
* #98 "NO RESPONDE"

ValueSet: OcupacionVS
Id: Ocupacion-PatientVS
Title: "Ocupación"
Description: "Codificación de la ocupación que puede tener el paciente"
* ^experimental = true

* include codes from system OcupacionCS

CodeSystem: OcupacionCS
Id: Ocupacion-PatientCS
Title: "Ocupación"
Description: "Codificación de la ocupación que puede tener el paciente, dado la terminología"
* ^caseSensitive = true
* ^experimental = true

* #001	"ABOGADO"
* #002	"ADMINISTRADOR PUBLICO"
* #003	"ADMINISTRATIVOS"
* #004	"ANATOMIA PATOLOGICA"
* #005	"ANESTESIA"
* #006	"ANTROPOLOGO"
* #007	"ARQUITECTO"
* #008	"ASISTENTE SOCIAL"
* #009	"AUXILIAR"
* #010	"AUXILIAR PARAMEDICO"
* #011	"BIOQUIMICO"
* #012	"CHOFER"
* #013	"CIRUGIA"
* #014	"CIRUGIA INFANTIL"
* #015	"CONSTRUCTOR CIVIL"
* #016	"CONTADOR"
* #017	"CONTADOR AUDITOR"
* #018	"DENTISTA ATENCION INTEGRAL/DOCENCIA DE SERVICIO"
* #019	"DENTISTA BECARIO DE RETORNO"
* #020	"DENTISTA BECARIO PRIMARIO"
* #021	"DENTISTA GENERAL DE ZONA"
* #022	"DENTISTA PERIODO ASISTENCIAL OBLIGATORIO"
* #023	"DERMATOLOGIA"
* #024	"DISEÑADOR GRAFICO"
* #025	"EDUCADOR SANITARIO"
* #026	"EDUCADORA DE PARVULOS"
* #027	"ENCUESTADOR Y CODIFICADOR DE DATOS"
* #028	"ENFERMERA"
* #029	"ESTADISTICO PROFESIONAL"
* #030	"ESTADISTICO TECNICO"
* #031	"FISIATRIA"
* #032	"FONOAUDIOLOGO"
* #033	"GEOGRAFO"
* #034	"INGENIERO CIVIL"
* #035	"INGENIERO COMERCIAL"
* #036	"INGENIERO DE EJECUCION"
* #037	"INSPECTORES"
* #038	"KINESIOLOGO"
* #039	"LABORATORIO CLINICO"
* #040	"LABORATORISTA DENTAL"
* #041	"MATRONA"
* #042	"MEDICINA FISICA Y REHABILITACION"
* #043	"MEDICINA INTEGRAL"
* #044	"MEDICINA INTERNA"
* #045	"MEDICINA NUCLEAR"
* #046	"MEDICINA SALUD FAMILIAR"
* #047	"MEDICO ATENCION INTEGRAL"
* #048	"MEDICO BECADO DE RETORNO"
* #049	"MEDICO BECADO PRIMARIO"
* #050	"MEDICO PERIODO ASISTENCIAL OBLIGATORIO"
* #051	"MEDICO VETERINARIO"
* #052	"NEUMOTISIOLOGIA"
* #053	"NEUROCIRUGIA"
* #054	"NEUROLOGIA"
* #055	"NEUROPSIQUIATRIA INFANTIL"
* #056	"NUTRICIONISTA"
* #057	"OBSTETRICIA Y GINECOLOGIA"
* #058	"ODONTOLOGO/DENTISTA"
* #059	"OFTALMOLOGIA"
* #060	"ONCOLOGIA"
* #061	"OTORRINOLARINGOLOGIA"
* #062	"OTROS TECNICOS"
* #063	"PEDIATRIA"
* #064	"PERIODISTA"
* #065	"PODOLOGO"
* #066	"PROCESADOR DE DATOS"
* #067	"PROFESOR"
* #068	"PSICOLOGO"
* #069	"PSIQUIATRIA"
* #070	"PSIQUIATRIA INFANTIL"
* #071	"QUIMICO FARMACEUTICO"
* #072	"QUIMICO FARMACEUTICO GENERAL DE ZONA"
* #073	"RADIOLOGIA"
* #074	"RADIOTERAPIA/ ONCOLOGIA"
* #075	"RELACIONADOR PUBLICO"
* #076	"SALUD PUBLICA"
* #077	"SECRETARIO/A"
* #078	"SOCIOLOGO"
* #079	"TECNICO DE NIVEL SUPERIOR (TENS)"
* #080	"TECNICO(A) PARAMEDICO DENTAL"
* #081	"TECNICOS DE NIVEL SUPERIOR ENFERMERIA"
* #082	"TECNOLOGO MEDICO"
* #083	"TERAPEUTA OCUPACIONAL"
* #084	"TRAUMATOLOGIA Y ORTOPEDIA"
* #085	"TRAUMATOLOGIA Y ORTOPEDIA INFANTIL"
* #086	"UROLOGIA"
* #088	"ACOMODADOR DE AUTOS"
* #089	"ACTOR O ACTRIZ"
* #090	"ACUICULTOR"
* #091	"ADMINISTRADOR"
* #092	"AGENTE"
* #093	"AGRICULTOR"
* #094	"AGRONOMO(A)"
* #095	"ALBAÑIL"
* #096	"ALMACENERO"
* #097	"AMASADOR(A)"
* #098	"ANALISTA"
* #099	"APICULTOR(A)"
* #100	"ARSENALERA"
* #101	"ARSENALERA PABELLON"
* #102	"ARTESANA"
* #103	"ARTISTA"
* #104	"ASEO Y ORNATO"
* #105	"ASESOR"
* #106	"ASESORA DEL HOGAR"
* #107	"ASISTENTE"
* #108	"ATENCION DE PUBLICO"
* #109	"AUDIOPROTESISTA"
* #110	"AUDIOVISUALISTAS"
* #111	"AUDITOR"
* #112	"AYUDANTE"
* #113	"BABYSITTER"
* #114	"BAILARINA"
* #115	"BANQUETERO"
* #116	"BARMAN (WOMAN)"
* #117	"BIBLIOTECARIO(A)"
* #118	"BODEGUERO(A)"
* #119	"BOMBERO DE BENCINERA"
* #120	"BOMBERO(A)"
* #121	"BOTERO"
* #122	"BOTONES"
* #123	"BRIGADISTA"
* #124	"BRIGADISTA FORESTAL"
* #125	"BUZO"
* #126	"BUZO MARISCADOR"
* #127	"CARABINERO DE CHILE"
* #128	"CAJERA"
* #129	"CALCULISTA"
* #130	"CALDERERO"
* #131	"CALICHERO"
* #132	"CALIFICADOR"
* #133	"CAMARERA(O)"
* #134	"CAMINERO(A)"
* #135	"CANTANTE"
* #136	"CAPACITADOR CULTURAL"
* #137	"CAPATAZ"
* #138	"CARGADOR"
* #139	"CARNICERO"
* #140	"CARPINTERO"
* #141	"CARTERO"
* #142	"CECINERO"
* #143	"CERRAJERO"
* #144	"CERVEZERO"
* #145	"CESANTE"
* #146	"CHEF"
* #147	"CIENTIFICO NUCLEAR"
* #148	"CIENTISTA POLITICO"
* #149	"CIRCENSE"
* #150	"COBRADOR"
* #151	"COCINERA(O)"
* #152	"COCTELERA(O)"
* #153	"COLECTIVERO"
* #154	"COMERCIANTE"
* #155	"COMERCIANTE AMBULANTE"
* #156	"COMUNICADOR AUDIO VISUAL"
* #157	"CONCEJAL"
* #158	"CONCERJE"
* #159	"CONSTRUCCION"
* #160	"CONSULTOR(A)"
* #161	"CONTRATISTA"
* #162	"CONTROLADOR(A)"
* #163	"COORDINADOR(A)"
* #164	"COPERA(O)"
* #165	"CORRALERO ARREGLADOR DE C."
* #166	"CORREDOR DE PROPIEDADES"
* #167	"CORREDOR DE SEGURO"
* #168	"CORRETAJE"
* #169	"CORRETAJE DE GANADO"
* #170	"CORTE Y CONFECCION"
* #171	"COSMETOLOGA"
* #172	"COSMETOLOGIA Y ESTETICA"
* #173	"COSTURA"
* #174	"CUARTELERO"
* #175	"CUIDA A ADULTO MAYOR"
* #176	"CUIDA DISCAPACITADO"
* #177	"CUIDA ENFERMOS"
* #178	"CUIDA NIÑOS"
* #179	"CUIDADOR"
* #180	"CUIDA MASCOTAS"
* #181	"DEPILADORA"
* #182	"DEPORTISTA DE ALTO RENDIMIENTO"
* #183	"DESABOLLADOR Y PINTURA"
* #184	"DETENIDO"
* #185	"DIACONO"
* #186	"DIARISTA"
* #187	"DIBUJANTE"
* #188	"DIBUJANTE TECNICO"
* #189	"DIGITADOR(A)"
* #190	"DIRIGENTE SOCIAL"
* #191	"EJECUTIVA"
* #192	"EJERCITO DE CHILE"
* #193	"ELECTRICISTA"
* #194	"ELECTRICO AUTOMOTRIZ"
* #195	"ELECTRICO MECANICO"
* #196	"EMBALADOR"
* #197	"EMBASADOR"
* #198	"EMPALILLADOR"
* #199	"EMPAQUE"
* #200	"EMPLEADO(A)"
* #201	"EMPLEADO PUBLICO"
* #202	"ENFIERRADOR"
* #203	"ENGRASADOR DE VEHICULOS"
* #204	"ENMARCADOR"
* #205	"ENSAMBLADOR"
* #206	"ENTRENADOR DEPORTIVO"
* #207	"ENVASADOR"
* #208	"ENZUNCHADOR"
* #209	"ESCRITOR"
* #210	"ESTAFETA"
* #211	"ESTAQUERO"
* #212	"ESTETICISTA"
* #213	"ESTIBADOR"
* #214	"ESTILISTA"
* #215	"ESTUDIANTE"
* #216	"EVENTOS"
* #217	"FABRICA DE QUESO"
* #218	"FABRICA DE MUEBLES"
* #219	"FABRICA DE VIDRIOS"
* #220	"FABRICA DE ZUECOS"
* #221	"FABRICA HOJALATERIA"
* #222	"FABRICA TEJIDOS"
* #223	"FABRICADOR DE COCINA"
* #224	"FABRICANTE DE VENTANA"
* #225	"FACILITADOR INTERCULTURAL"
* #226	"FAENA"
* #227	"FAENA AGRICOLA FORESTAL"
* #228	"FERIANTE"
* #229	"FERRETERO"
* #230	"FISCALIZADOR(A)"
* #231	"FISICO"
* #232	"FISICA NUCLEAR"
* #233	"FLETES"
* #234	"FLORISTA"
* #235	"FOTOGRAFO(A)"
* #236	"FUNCIONARIO MUNICIPAL."
* #237	"FUNCIONARIO PUBLICO"
* #238	"FUNDIDOR"
* #239	"FUTBOLISTA"
* #240	"GARZON(A)"
* #241	"GASFITER"
* #242	"GASTRONOMO(A)"
* #243	"GEOGRAFO"
* #244	"GERDARME"
* #245	"GERENTE(A)"
* #246	"GINETE"
* #247	"GROUPIER"
* #248	"GUARDA BOSQUE"
* #249	"GUARDA PARQUE"
* #250	"GUARDADORA"
* #251	"GUARDIA"
* #252	"GUIA" 
* #253	"GUIA DE MONTAñA"
* #254	"GUIA INTERCULTURAL."
* #255	"GUIA TURISTICO"
* #256	"HERRERO"
* #257	"HIGENISTA DENTAL"
* #258	"HOJALATERO"
* #259	"HORTELANA"
* #260	"INDEPENDIENTE"
* #261	"IMPREGNADOR"
* #262	"INSTALADOR(A)"
* #263	"INSTRUCTOR(A)"
* #264	"INSTRUCTOR KARETE"
* #265	"INSTRUCTORA DE ZUMBA"
* #266	"INTENDENTE"
* #267	"INTERNADO DE ESTUDIOS SUPERIORES"
* #268	"INTERNO(A) CARCEL"
* #269	"INTERPRETE LEGUAS"
* #270	"INVALIDEZ"
* #271	"JARDINERO(A)"
* #272	"JEFE(A)"
* #273	"JORNALERO"
* #274	"JOYERO(A)"
* #275	"JUBILADO"
* #276	"JUNIOR" 
* #277	"LABORATORISTA"
* #278	"LACTANTE"
* #279	"LECHERO"
* #280	"LECTOR"
* #281	"LECTOR DE LUZ"
* #282	"LEÑADOR"
* #283	"LOCUTOR(A)"
* #284	"LUSTRA BOTAS"
* #285	"MACHI"
* #286	"MADERERO"
* #287	"MAESTRO(A) DE COCINA"
* #288	"MAESTRO(A) PASTELERO(A)"
* #289	"MAESTRO"
* #290	"MALABARISTA"
* #291	"MANEJA MAQUINA PESADA"
* #292	"MANICURISTA"
* #293	"MANIPULADOR(A) DE ALIMENTOS"
* #294	"MANIPULADORA"
* #295	"MARINO MERCANTE"
* #296	"MARISCADOR"
* #297	"MASAJISTA"
* #298	"MASOTERAPEUTA"
* #299	"MAYORDOMO"
* #300	"MECANICO"
* #301	"MECANICO AUTOMOTRIZ"
* #302	"MECANICO INDUSTRIAL"
* #303	"MEDIADORA FAMILIAR"
* #304	"MESERA(O)"
* #305	"MICROEMPRESARIO(A)"
* #306	"MINERO"
* #307	"MISIONERO(A)"
* #308	"MODISTA"
* #309	"MOLINERO"
* #310	"MONITOR(A)"
* #311	"MONJA"
* #312	"MONTAJE EQUIPOS"
* #313	"MONTAJE"
* #314	"MOTOSIERRISTA"
* #315	"MOZO"
* #316	"MR"
* #317	"MUCAMA"
* #318	"MUEBLISTA"
* #319	"MUSICO"
* #320	"NO APLICA"
* #321	"NO INFORMADO"
* #322	"NOCHERO"
* #323	"OBRERO(A)"
* #324	"OBRERO AGRICOLA"
* #325	"OBRERO CONSTRUCCION"
* #326	"OBRERO FORESTAL"
* #327	"OPERADOR(A)"
* #328	"ORFEBRE"
* #329	"ORGANILLERA"
* #330	"ORGANIZADOR DE EVENTOS"
* #331	"ORIENTADORA"
* #332	"ORQUILLERO"
* #333	"PAISAJISTA"
* #334	"PANADERO"
* #335	"PLANIFICADOR"
* #336	"PARQUIMETRO"
* #337	"PASTELERA(O)"
* #338	"PASTOR"
* #339	"PELUQUERO(A)"
* #340	"PENSIONADO(A)"
* #341	"PERSONAL DE ASEO"
* #342	"PESCADOR ARTESANAL"
* #343	"PETICERO"
* #344	"PICADOR DE LEñA"
* #345	"PINTOR"
* #346	"PINTOR AUTOMOTRIZ"
* #347	"PIONETA"
* #348	"PLATERO"
* #349	"PODADOR"
* #350	"PORTERO"
* #351	"PRENSISTA"
* #352	"PREPARADOR"
* #353	"PREPARADOR  FISICO"
* #354	"PREPARADOR DE CABALLOS"
* #355	"PRESTADOR DE SERVICIOS"
* #356	"PREVENCIONISTA DE RIESGO"
* #357	"PROCURADOR"
* #358	"PROMOTOR(A)"
* #359	"PSICOPEDAGOGA"
* #360	"PUBLICISTA"
* #361	"RADIO OPERADOR"
* #362	"RECAUDADOR(A)"
* #363	"RECEPCIONISTA"
* #364	"RECLUSO"
* #365	"RECOLECTOR"
* #366	"RELIGIOSA"
* #367	"REPARADOR BICICLETAS"
* #368	"REPARADOR DE CALZADO"
* #369	"REPARTIDOR"
* #370	"REPONEDOR(A)"
* #371	"REPOSTERA"
* #372	"RONDIN"
* #373	"SACERDOTE"
* #374	"SALVAVIDAS"
* #375	"SERVICIO DOMESTICO"
* #376	"SERVICIO SEXUAL"
* #377	"SIN OCUPACION"
* #378	"SOLDADOR"
* #379	"SONIDISTA"
* #380	"SOSTENEDOR"
* #381	"SUBCOMISARIO DE INVESTIGACIONES"
* #382	"SUBDIRECTOR ADMINISTRATIVO"
* #383	"SUPERVISOR(A)"
* #384	"SUPLEMENTERO(A)"
* #385	"TAPICERO"
* #386	"TATUADOR(A)"
* #387	"TAXISTA"
* #388	"TECNICO"
* #389	"TEMPORERA"
* #390	"TOPOGRAFO"
* #391	"TORNERO"
* #392	"TRABAJOS ESPORADICOS"
* #393	"TRACTORISTA"
* #394	"TRADUCTOR(A)"
* #395	"TRAMITES DE PENSION"
* #396	"TRANSPORTE"
* #397	"TRANSPORTE ESCOLAR"
* #398	"TRANSPORTISTA"
* #399	"TRASADOR"
* #400	"TRASPORTE DE PASAJEROS"
* #401	"TRATERO"
* #402	"TURISMO"
* #403	"TUTORA DE SENAME"
* #404	"URBANIZADOR"
* #405	"VAJILLERA"
* #406	"VENDEDOR(A)"
* #407	"VIDRIERO"
* #408	"VIGILANTE"
* #409	"VISITADOR MEDICO"
* #410	"VITRINISTA"
* #411	"VULCANIZADOR"
* #412	"YERBATERA"
* #413	"ZAPATERO"
* #414	"DUEÑA DE CASA"
* #000	"SIN INFORMACION"
* #416	"INCAPACITADO(A) PERMANENTE PARA TRABAJAR"
* #417	"REMUNERADOR INDEPENDIENTE"
* #418	"REMUNERADOR DEPENDIENTE"
* #419	"RENTISTA"


ValueSet: GenderIdentityVS
Id: GenderIdentityVS
Title: "Identidad de Género"
Description: "Genero con el cual se identifica el paciente"
* ^experimental = true

* include codes from system GenderIdentityCs

CodeSystem: GenderIdentityCs
Id: GenderIdentityCs
Title: "Identidad de Género"
Description: "Genero con el cual se identifica el paciente"
* ^caseSensitive = true
* ^experimental = true

* #01  "Masculino"
* #02  "Femenino"
* #31  "Trans Masculino"
* #32  "Trans Femenino"

ValueSet: EstadoCivilVS
Id: EstadoCivilVS
Title: "Estado Civil"
Description: "Definie el estado civil que se encuentra la persona, según la normativa local de Chile"
* ^experimental = true

* include codes from system EstadoCivilCS

CodeSystem: EstadoCivilCS
Id: EstadoCivilCS
Title: "Estado Civil"
Description: "Definie el estado civil que se encuentra la persona, según la normativa local de Chile"
* ^caseSensitive = true
* ^experimental = true

* #01 "SOLTERO(A)"
* #02 "CASADO(A)"
* #03 "VIUDO(A)"
* #04 "SEPARADO(A)"
* #05 "CONVIVIENTE"
* #06 "DIVORCIADO(A)"
* #09 "DESCONOCIDO"

ValueSet: EscalasNutricionales
Id: EscalaNutricionales
Title: "Escalas Nutricionales"
Description: "Las distintas escalas nutricionales utilizadas dentro de los sistemas del servicio de salud"
* ^experimental = true

* include codes from system EscalaNutricionalEstandar
* include codes from system EscalaNutricionalPediatrica
* include codes from system EscalaNutricionalAdulto

CodeSystem: EscalaNutricionalAdulto
Id: EscalaNutricionalAdulto
Title: "Escala Nutricional para Adultos"
Description: "Escala nutricional de un paciente adulto"
* ^caseSensitive = true
* ^experimental = true

* #BajoloNormal "Bajo lo Normal"
* #Normal "Normal"
* #Sobrepeso "Sobrepeso"
* #ObesidadI "Obesidad I"
* #ObesidadII "Obesidad II"
* #ObesidadIII "Obesidad III"

CodeSystem: EscalaNutricionalPediatrica
Id: EscalaNutricionalPediatrica
Title: "Escala Nutricional para Pediátricos"
Description: "Escala nutricional de un paciente pediatrico"
* ^caseSensitive = true
* ^experimental = true

* #Desnutrido "Desnutrido"
* #DesnutridoSecundario "Desnutrido Secundario"
* #Riesgo "Riesgo"
* #BajoloNormal "Bajo lo Normal"
* #Normal "Normal"
* #Sobrepeso "Sobrepeso"
* #Obesidad "Obesidad"

CodeSystem: EscalaNutricionalEstandar
Id: EscalaNutricionalEstandar
Title: "Escala Nutricional"
Description: "Escala estandar de nutrición para un paciente"
* ^caseSensitive = true
* ^experimental = true

* #BajoloNormal "Bajo Peso"
* #Normal "Normal"
* #Sobrepeso "Sobrepeso"
* #Obesidad "Obesidad"

ValueSet: EscalaMovimientoFetalVS
Id: EscalaMovimientoFetalVS
Title: "Resultados de un Movimiento Fetal"
Description: "Resultados de un movimiento fetal"
* ^experimental = true

* include codes from system EscalaMovimientoFetalCS

CodeSystem: EscalaMovimientoFetalCS
Id: EscalaMovimientoFetalCS
Title: "Resultados de un Movimiento Fetal"
Description: "Resultados de un movimiento fetal"
* ^caseSensitive = true
* ^experimental = true

* #-
* #+
* #++
* #+++

ValueSet: EscalaConcienciaVS
Id: EscalaConcienciaVS
Title: "Estado de Cociencia"
Description: "Posiles resultados del estado de conciencia en que se encuentra un paciente."
* ^experimental = true

* include codes from system EscalaConcienciaCS

CodeSystem: EscalaConcienciaCS
Id: EscalaConcienciaCS
Title: "Estado de Cociencia"
Description: "Posiles resultados del estado de conciencia en que se encuentra un paciente."
* ^caseSensitive = true
* ^experimental = true 

* #Alerta "Alerta"
* #Verbal "Verbal"
* #Doloroso "Doloroso"
* #Inconsciente "Inconsciente"

ValueSet: ResultadosSiNo
Id: ResultadosSiNo
Title: "Resultados Si y No"
Description: "Resultado para respuestas afirmativas o negativas"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = true

* $SCT#373066001 "Si"
* $SCT#373067005 "No"

ValueSet: TitulosProfesionalesPrestadoresVS
Id: TitulosProfesionalesPrestadoresVS
Title: "Titulos Profesionales Prestadores"
Description: "Este code system de los títulos profesionales de lo prestadores de salud del decreto exento 643"
* ^experimental = true

* include codes from system TitulosProfesionalesPrestadoresCS

CodeSystem: TitulosProfesionalesPrestadoresCS
Id: TitulosProfesionalesPrestadoresCS
Title: "Titulos Profesionales Prestadores"
Description: "Este code system de los títulos profesionales de lo prestadores de salud del decreto exento 643"
* ^caseSensitive = true
* ^experimental = true

* #01	"Médico Cirujano"
* #02	"Cirujano Dentista"
* #03	"Enfermeras(os)"
* #04	"Enfermeras(os) Matronas(es)"
* #05	"Matronas(es)"
* #06	"Tecnólogos Médicos"
* #07	"Psicólogos"
* #08	"Kinesiólogos"
* #09	"Farmacéuticos y Químicos-Farmacéuticos"
* #10	"Bioquímicos"
* #11	"Nutricionistas"
* #12	"Fonoaudiólogos"
* #13	"Terapeutas Ocupacionales"
* #14	"Auxiliares Paramédicos de Alimentación"
* #15	"A.P de Radiología, Radioterapia, Lab"
* #16	"Auxiliares Paramédicos de Odontología"
* #17	"Auxiliares Paramédicosm dde Farmacia"
* #18	"Auxiliares de Enfermería"
* #19	"Técnicos en Nivel Superioren Salud"
* #20	"Técnicos en Salud"
* #21	"Técnicos Nivel Medion en Salud"
* #22	"Laboratopristas Dentales"
* #23	"Podólogos"
* #24	"Ópticos"
* #25	"Contactólogos"
* #26	"Homeópatas"
* #27	"Acupunturistas"
* #28	"Naturópatas"
* #29	"Cosmetólogos"
* #99   "desconocida"




