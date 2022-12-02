Instance:     Documento
InstanceOf:   CdrDocument
Usage:        #example
Title:       "Documento de Signos Vitales"
Description: "Ejemplo de un documento"

* identifier.system = "http://api.ssasur.cl/signosvitales"
* identifier.value = "6fc2e782-fd56-415e-bc85-f6dcd2194ace"
* type = #document
* timestamp = "2022-07-07T12:00:00-04:00"
* entry[0].fullUrl = "Composition/4745debb-35e6-42f5-8094-65f9b47dcc94"
* entry[=].resource = 4745debb-35e6-42f5-8094-65f9b47dcc94
* entry[+].fullUrl = "Patient/56851b4b-9867-4b72-9a2c-3a1c8c1cbddf"
* entry[=].resource = 56851b4b-9867-4b72-9a2c-3a1c8c1cbddf
* entry[+].fullUrl = "Practitioner/03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50"
* entry[=].resource = 03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50
* entry[+].fullUrl = "Organization/30561296-f509-40d1-878a-1d4f9e71365d"
* entry[=].resource = 30561296-f509-40d1-878a-1d4f9e71365d
* entry[+].fullUrl = "Observation/30561296-f509-40d1-878a-1d42432ffd0a"
* entry[=].resource = 30561296-f509-40d1-878a-1d42432ffd0a
* entry[+].fullUrl = "Observation/84f42b61-d690-45e6-87f8-0672432ffd0a"
* entry[=].resource = 84f42b61-d690-45e6-87f8-0672432ffd0a
* entry[+].fullUrl = "Observation/13d97bbc-7a58-49e9-bf12-4add450b605a"
* entry[=].resource = 13d97bbc-7a58-49e9-bf12-4add450b605a
* entry[+].fullUrl = "Observation/0b06f501-5465-4b31-b106-56f73cc0ef99"
* entry[=].resource = 0b06f501-5465-4b31-b106-56f73cc0ef99
* entry[+].fullUrl = "Observation/df1a8537-56a2-4aec-aa6c-f6f537e874e7"
* entry[=].resource = df1a8537-56a2-4aec-aa6c-f6f537e874e7
* entry[+].fullUrl = "Observation/432b12d6-5a42-47ca-8024-495309843029"
* entry[=].resource = 432b12d6-5a42-47ca-8024-495309843029
* entry[+].fullUrl = "Observation/4bb12bcf-44f1-4af0-9deb-5688de0f0230"
* entry[=].resource = 4bb12bcf-44f1-4af0-9deb-5688de0f0230
* entry[+].fullUrl = "Observation/0549e5ba-54da-4dc8-8217-73f4ab458787"
* entry[=].resource = 0549e5ba-54da-4dc8-8217-73f4ab458787
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* signature.when = "2022-11-23T14:31:22.903+00:00"
* signature.who.reference = "Practitioner/03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50"
* signature.who.display = "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)"
* signature.sigFormat = #application/jose
* signature.data = "QmVhcmVyIEJxdGdUb25BN0VSTmVlcFc3ZDgyNXJqeXZCUkpnNk5R"
