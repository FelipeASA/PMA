clear
insheet using "PMA_17_06_2022.tab", tab case names

label variable interview__id `"Unique 32-character long identifier of the interview"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable assignment__id `"Assignment id (identifier in numeric format)"'

label variable sssys_irnd `"Random number in the range 0..1 associated with interview"'

label variable has__errors `"Errors count in the interview"'

label define interview__status 0 `"Restored"' 20 `"Created"' 40 `"SupervisorAssigned"' 60 `"InterviewerAssigned"' 65 `"RejectedBySupervisor"' 80 `"ReadyForInterview"' 85 `"SentToCapi"' 95 `"Restarted"' 100 `"Completed"' 120 `"ApprovedBySupervisor"' 125 `"RejectedByHeadquarters"' 130 `"ApprovedByHeadquarters"' -1 `"Deleted"' 
label values interview__status interview__status
label variable interview__status `"Status of the interview"'

label variable I_0_0 `"Fecha y hora"'

label define I_0_1 1 `"1. Recolector 1"' 2 `"2. Recolector 2"' 3 `"3. Recolector 3"' 4 `"4. Recolector 4"' 5 `"5. Recolector 5"' 6 `"6. Recolector 6"' 7 `"7. Recolector 7"' 8 `"8. Recolector 8"' 9 `"9. Recolector 9"' 10 `"n. Recolector n"' 
label values I_0_1 I_0_1
label variable I_0_1 `"Identificador"'

label variable I_0_2 `"Región"'

label define I_0_3 1 `"1. CHÉPICA"' 2 `"2. CHIMBARONGO"' 3 `"3. CODEGUA"' 4 `"4. COINCO"' 5 `"5. COLTAUCO"' 6 `"6. DOÑIHUE"' 7 `"7. GRANEROS"' 8 `"8. LA ESTRELLA"' 9 `"9. LAS CABRAS"' 10 `"10. LITUECHE"' 11 `"11. LOLOL"' 12 `"12. MACHALÍ"' 13 `"13. MALLOA"' 14 `"14. MARCHIHUE"' 15 `"15. MOSTAZAL"' 16 `"16. NANCAGUA"' 17 `"17. NAVIDAD"' 18 `"18. OLIVAR"' 19 `"19. PALMILLA"' 20 `"20. PAREDONES"' 21 `"21. PERALILLO"' 22 `"22. PEUMO"' 23 `"23. PICHIDEGUA"' 24 `"24. PICHILEMU"' 25 `"25. PLACILLA"' 26 `"26. PUMANQUE"' 27 `"27. QUINTA DE TILCOCO"' 28 `"28. RANCAGUA"' 29 `"29. RENGO"' 30 `"30. REQUÍNOA"' 31 `"31. SAN FERNANDO"' 32 `"32. SAN VICENTE"' 33 `"33. SANTA CRUZ"' 
label values I_0_3 I_0_3
label variable I_0_3 `"Comuna"'

label define I_0_4 1 `"1. XXXXXX1"' 2 `"2. XXXXXX2"' 3 `"3. XXXXXX3"' 4 `"4. XXXXXX4"' 5 `"…"' 6 `"n. XXXXXXn"' 
label values I_0_4 I_0_4
label variable I_0_4 `"Segmento"'

label variable GEO `"Captura punto geográfico"'

label variable geo_area `"Cálculo de área capturada en héctareas"'

label define I_0_5 1 `"1. Visita 1"' 2 `"2. Visita 2"' 3 `"3. Visita 3"' 4 `"4. Otro. Especifique número de visita"' 
label values I_0_5 I_0_5
label variable I_0_5 `"Visita"'

label variable I_0_5_4_1 `"Otro"'

label define I_0_6 1 `"1. Sí"' 2 `"2. No"' 
label values I_0_6 I_0_6
label variable I_0_6 `"Informante"'

label define I_0_7 1 `"1. Sí"' 2 `"2. No"' 3 `"3. No sabe. No responde"' 
label values I_0_7 I_0_7
label variable I_0_7 `"Actividad"'

label define I_0_8 1 `"1. Sí"' 2 `"2. No"' 3 `"3. No responde"' 
label values I_0_8 I_0_8
label variable I_0_8 `"Participación"'

label define I_0_9 1 `"1. Soy el/la productor/a"' 2 `"2. Soy gerente/a, socio/a o representante legal"' 3 `"3. Soy el/la administrador/a"' 4 `"4. Soy empleado/a (administrativo/a, secretario/a o contador/a)"' 5 `"5. Soy trabajador/a familiar del/la productor/a"' 6 `"6. Soy trabajador/a de campo (capataz, maquinista, regador, otro)"' 7 `"7. Otro. Especifique"' 
label values I_0_9 I_0_9
label variable I_0_9 `"Función"'

label variable I_0_9_7_1 `"Otro"'

label define I_0_10 1 `"1. Sí"' 2 `"2. No"' 3 `"3. No sabe. No responde"' 
label values I_0_10 I_0_10
label variable I_0_10 `"Segmento"'

label define I_0_11 1 `"1. Número 1"' 2 `"2. Número 2"' 3 `"3. Número 3"' 4 `"4. Número 4"' 5 `"5. Número 5"' 6 `"6. Número 6"' 7 `"7. Número 7"' 8 `"8. Número 8"' 9 `"9. Número 9"' 10 `"10. Número 10"' 11 `"11. Número 11"' 12 `"12. Número 12"' 13 `"13. Número 13"' 14 `"14. Número 14"' 15 `"15. Número 15"' 16 `"16. Número 16"' 17 `"17. Número 17"' 18 `"18. Número 18"' 19 `"19. Número 19"' 20 `"20. Número 20"' 21 `"21. Número 21"' 22 `"22. Número 22"' 23 `"23. Número 23"' 24 `"24. Número 24"' 25 `"25. Número 25"' 26 `"26. Número 26"' 27 `"27. Número 27"' 28 `"28. Número 28"' 29 `"29. Número 29"' 30 `"30. Número 30"' 31 `"31. Número 31"' 32 `"32. Número 32"' 33 `"33. Número 33"' 34 `"34. Número 34"' 35 `"35. Número 35"' 36 `"36. Número 36"' 37 `"37. Número 37"' 38 `"38. Número 38"' 39 `"39. Número 39"' 40 `"40. Número 40"' 41 `"41. Número 41"' 42 `"42. Número 42"' 43 `"43. Número 43"' 44 `"44. Número 44"' 45 `"45. Número 45"' 46 `"46. Número 46"' 47 `"47. Número 47"' 48 `"48. Número 48"' 49 `"49. Número 49"' 50 `"50. Otro. Especifique número de UPA (o no UPA)"' 
label values I_0_11 I_0_11
label variable I_0_11 `"I.0.11.- Indicar N° de UPA (o no UPA) dentro del Segmento"'

label variable I_0_11_50_1 `"I.0.11.50.1.- Otro. Especifique número de UPA (o no UPA)"'

label define I_0_12 1 `"1. Sí o No logra observar"' 2 `"2. No"' 
label values I_0_12 I_0_12
label variable I_0_12 `"actividad segmento"'

label define I_0_13 1 `"1. Sí"' 2 `"2. No"' 
label values I_0_13 I_0_13
label variable I_0_13 `"actividad segmento"'

label define I_0_14 1 `"1. Número 1"' 2 `"2. Número 2"' 3 `"3. Número 3"' 4 `"4. Número 4"' 5 `"5. Número 5"' 6 `"6. Número 6"' 7 `"7. Número 7"' 8 `"8. Número 8"' 9 `"9. Número 9"' 10 `"10. Número 10"' 11 `"11. Número 11"' 12 `"12. Número 12"' 13 `"13. Número 13"' 14 `"14. Número 14"' 15 `"15. Número 15"' 16 `"16. Número 16"' 17 `"17. Número 17"' 18 `"18. Número 18"' 19 `"19. Número 19"' 20 `"20. Número 20"' 21 `"21. Número 21"' 22 `"22. Número 22"' 23 `"23. Número 23"' 24 `"24. Número 24"' 25 `"25. Número 25"' 26 `"26. Número 26"' 27 `"27. Número 27"' 28 `"28. Número 28"' 29 `"29. Número 29"' 30 `"30. Número 30"' 31 `"31. Número 31"' 32 `"32. Número 32"' 33 `"33. Número 33"' 34 `"34. Número 34"' 35 `"35. Número 35"' 36 `"36. Número 36"' 37 `"37. Número 37"' 38 `"38. Número 38"' 39 `"39. Número 39"' 40 `"40. Número 40"' 41 `"41. Número 41"' 42 `"42. Número 42"' 43 `"43. Número 43"' 44 `"44. Número 44"' 45 `"45. Número 45"' 46 `"46. Número 46"' 47 `"47. Número 47"' 48 `"48. Número 48"' 49 `"49. Número 49"' 50 `"50. Otro. Especifique número de UPA (o no UPA)"' 
label values I_0_14 I_0_14
label variable I_0_14 `"I.0.14.- Indicar N° de UPA (o no UPA) dentro del Segmento"'

label variable I_0_14_50_1 `"I.0.14.50.1.- Otro. Especifique número de UPA (o no UPA)"'

label define I_0_15 1 `"1. No puede acceder al Segmento"' 2 `"2. No puede acceder a la UPA dentro del Segmento"' 3 `"3. Sin informante"' 4 `"4. Informante desconoce información o sin informante idóneo"' 5 `"5. Concerta cita"' 6 `"6. Rechazo"' 7 `"7. Otro. Especifique"' 
label values I_0_15 I_0_15
label variable I_0_15 `"Motivo cierre"'

label variable I_0_15_7_1 `"Otro"'

label variable I_0_16 `"I.0.16.- Registrar superficie del Segmento (o parte de este) (ha)"'

label define I_0_17 1 `"1. Sí"' 2 `"2. No"' 
label values I_0_17 I_0_17
label variable I_0_17 `"actividad segmento"'

label variable I_0_18 `"I.0.18.- Ingresar observación"'

label define I_0_19 1 `"1. Cambio de uso de suelo"' 2 `"2. Sin actividad temporal"' 
label values I_0_19 I_0_19
label variable I_0_19 `"no actividad"'

label define I_0_20_1_7 1 `"1. Zona industrial o comercial"' 2 `"2. Red vial"' 3 `"3. Centros poblados"' 4 `"4. Recreación y esparcimiento"' 5 `"5. Militar-Gubernamental"' 6 `"6. Otro. Especifique"' 7 `"7. Zona de exclusión. Especifique"' 
label values I_0_20_1_7 I_0_20_1_7
label variable I_0_20_1_7 `"Motivo"'

label define I_0_20_8_13 8 `"8. Suelo en descanso o regeneración"' 9 `"9. Enfermedad del productor"' 10 `"10. Falta de agua"' 11 `"11. Falta de recursos económicos"' 12 `"12. Por decisión del productor"' 13 `"13. Otro. Especifique"' 
label values I_0_20_8_13 I_0_20_8_13
label variable I_0_20_8_13 `"Motivo"'

label variable I_0_20_6_1 `"Otro"'

label variable I_0_20_7_1 `"Otro"'

label variable I_0_20_13_1 `"Otro"'

label define I_0_21 1 `"1. Número 1"' 2 `"2. Número 2"' 3 `"3. Número 3"' 4 `"4. Número 4"' 5 `"5. Número 5"' 6 `"6. Número 6"' 7 `"7. Número 7"' 8 `"8. Número 8"' 9 `"9. Número 9"' 10 `"10. Número 10"' 11 `"11. Número 11"' 12 `"12. Número 12"' 13 `"13. Número 13"' 14 `"14. Número 14"' 15 `"15. Número 15"' 16 `"16. Número 16"' 17 `"17. Número 17"' 18 `"18. Número 18"' 19 `"19. Número 19"' 20 `"20. Número 20"' 21 `"21. Número 21"' 22 `"22. Número 22"' 23 `"23. Número 23"' 24 `"24. Número 24"' 25 `"25. Número 25"' 26 `"26. Número 26"' 27 `"27. Número 27"' 28 `"28. Número 28"' 29 `"29. Número 29"' 30 `"30. Número 30"' 31 `"31. Número 31"' 32 `"32. Número 32"' 33 `"33. Número 33"' 34 `"34. Número 34"' 35 `"35. Número 35"' 36 `"36. Número 36"' 37 `"37. Número 37"' 38 `"38. Número 38"' 39 `"39. Número 39"' 40 `"40. Número 40"' 41 `"41. Número 41"' 42 `"42. Número 42"' 43 `"43. Número 43"' 44 `"44. Número 44"' 45 `"45. Número 45"' 46 `"46. Número 46"' 47 `"47. Número 47"' 48 `"48. Número 48"' 49 `"49. Número 49"' 50 `"50. Otro. Especifique número de UPA (o no UPA)"' 
label values I_0_21 I_0_21
label variable I_0_21 `"I.0.21.- Indicar N° de UPA (o no UPA) dentro del Segmento"'

label variable I_0_21_50_1 `"I.0.21.50.1.- Otro. Especifique número de UPA (o no UPA)"'

label variable I_0_22 `"I.0.22.- Superficie del terreno con cambio de uso de suelo o sin actividad temporal dentro del Segmento (ha)"'

label define I_0_23 1 `"1. Soy el/la productor/a"' 2 `"2. Soy gerente/a, socio/a o representante legal"' 3 `"3. Soy el/la administrador/a"' 4 `"4. Soy empleado/a (administrativo/a, secretario/a o contador/a)"' 5 `"5. Soy trabajador/a familiar del/la productor/a"' 6 `"6. Soy trabajador/a de campo (capataz, maquinista, regador, otro)"' 7 `"7. Vecino del sector"' 8 `"8. Familiar"' 9 `"9. Cuidador"' 10 `"10. Otro. Especifique"' 
label values I_0_23 I_0_23
label variable I_0_23 `"no actividad"'

label variable I_0_23_10_1 `"Otro"'

label variable I_0_23_1 `"I.0.23.1.- Nombre y apellido del informante"'

label define I_0_23_2 1 `"1. Fijo"' 2 `"2. Móvil"' 3 `"3. No tiene"' 
label values I_0_23_2 I_0_23_2
label variable I_0_23_2 `"I.0.23.2.-Tipo de teléfono"'

label variable I_0_23_3 `"I.0.23.3.- Número de teléfono del informante"'

label define I_0_24 1 `"1. Sí"' 2 `"2. No"' 
label values I_0_24 I_0_24
label variable I_0_24 `"I.0.24.- ¿INTERRUMPE?"'

label define I_0_24_1 1 `"1. No puede acceder al Segmento"' 2 `"2. No puede acceder a la UPA dentro del Segmento"' 3 `"3. Sin informante"' 4 `"4. Informante desconoce información o sin informante idóneo"' 5 `"5. Concerta cita"' 6 `"6. Rechazo"' 7 `"7. Otro. Especifique"' 
label values I_0_24_1 I_0_24_1
label variable I_0_24_1 `"Interrupción"'

label variable I_0_24_7_1 `"Otro"'

label variable I_0_Obs `"Observación de la sección 0: Indagación Operativa"'

label define DI_1 1 `"1. Soy el/la productor/a"' 2 `"2. Soy gerente/a, socio/a o representante legal"' 3 `"3. Soy el/la administrador/a"' 4 `"4. Soy empleado/a (administrativo/a, secretario/a o contador/a)"' 5 `"5. Soy trabajador/a familiar del/la productor/a"' 6 `"6. Soy trabajador/a de campo (capataz, maquinista, regador, otro)"' 7 `"7. Otro. Especifique"' 
label values DI_1 DI_1
label variable DI_1 `"DI.1.- ¿Cuál es la función del informante en la UPA?"'

label variable DI_1_7_1 `"Otro"'

label variable DI_2_1 `"DI.2.1.- Primer nombre"'

label variable DI_2_2 `"DI.2.2.- Segundo nombre"'

label variable DI_2_3 `"DI.2.3.- Apellido paterno"'

label variable DI_2_4 `"DI.2.4.- Apellido materno"'

label variable DI_3 `"DI.3.- ¿Cuántos años cumplidos tiene el/la informante?"'

label variable DI_3_1 `"DI.3.1.- Justificar edad fuera de rango"'

label define DI_4 1 `"1. Mujer"' 2 `"2. Hombre"' 
label values DI_4 DI_4
label variable DI_4 `"DI.4.- ¿Cuál es el sexo del/la informante?"'

label variable DI_5_1 `"DI.5.1.- Número 1"'

label define DI_5_2 1 `"1. Fijo"' 2 `"2. Móvil"' 
label values DI_5_2 DI_5_2
label variable DI_5_2 `"DI.5.2.- Fijo / Móvil"'

label variable DI_5_3 `"DI.5.3.- Número 2"'

label define DI_5_4 1 `"1. Fijo"' 2 `"2. Móvil"' 
label values DI_5_4 DI_5_4
label variable DI_5_4 `"DI.5.4.- Fijo / Móvil"'

label variable DI_6_1 `"DI.6.1.- Correo electrónico 1"'

label variable DI_6_2 `"DI.6.2.- Correo electrónico 2"'

label variable DI_Obs `"DI.Obs.- Observaciones Sección I (Datos del Informante)"'

label define DP_7 1 `"1. Persona Natural"' 2 `"2. Persona Jurídica"' 
label values DP_7 DP_7
label variable DP_7 `"DP.7.- Esta UPA es gestionada por:"'

label variable DP_8_1 `"DP.8.1.- Primer nombre"'

label variable DP_8_2 `"DP.8.2.- Segundo nombre"'

label variable DP_8_3 `"DP.8.3.- Apellido paterno"'

label variable DP_8_4 `"DP.8.4.- Apellido materno"'

label variable DP_9_1 `"DP.9.1.- ¿Cuál es el RUT del/la productor/a?"'

label variable DP_10 `"DP.10.- ¿Cuántos años cumplidos tiene el/la productor/a?"'

label variable DP_10_1 `"DP.10.1.- Justificar edad fuera de rango"'

label define DP_11 1 `"1. Mujer"' 2 `"2. Hombre"' 
label values DP_11 DP_11
label variable DP_11 `"DP.11.- ¿Cuál es el sexo del/la productor/a?"'

label variable DP_12_1 `"DP.12.1.- Número 1"'

label define DP_12_2 1 `"1. Fijo"' 2 `"2. Móvil"' 
label values DP_12_2 DP_12_2
label variable DP_12_2 `"DP.12.2.- Fijo / Móvil"'

label variable DP_12_3 `"DP.12.3.- Número 2"'

label define DP_12_4 1 `"1. Fijo"' 2 `"2. Móvil"' 
label values DP_12_4 DP_12_4
label variable DP_12_4 `"DP.12.4.- Fijo / Móvil"'

label variable DP_13 `"DP.13.- Correo electrónico del/la productor/a"'

label variable DP_7_2_2_1 `"DP.7.2.2.1.- Primer nombre"'

label variable DP_7_2_2_2 `"DP.7.2.2.2.- Segundo nombre"'

label variable DP_7_2_2_3 `"DP.7.2.2.3.- Apellido paterno"'

label variable DP_7_2_2_4 `"DP.7.2.2.4.- Apellido materno"'

label variable DP_7_2_3 `"DP.7.2.3.- ¿Cuántos años cumplidos tiene el/la informante?"'

label variable DP_7_2_3_1 `"DP.7.2.3.1.- Justificar edad fuera de rango"'

label define DP_7_2_4 1 `"1. Mujer"' 2 `"2. Hombre"' 
label values DP_7_2_4 DP_7_2_4
label variable DP_7_2_4 `"DP.7.2.4.- ¿Cuál es el sexo del/la informante?"'

label variable DP_7_2_5_1 `"DP.7.2.5.1.- Número 1"'

label define DP_7_2_5_2 1 `"1. Fijo"' 2 `"2. Móvil"' 
label values DP_7_2_5_2 DP_7_2_5_2
label variable DP_7_2_5_2 `"DP.7.2.5.2.- Fijo / Móvil"'

label variable DP_7_2_5_3 `"DP.7.2.5.3.- Número 2"'

label define DP_7_2_5_4 1 `"1. Fijo"' 2 `"2. Móvil"' 
label values DP_7_2_5_4 DP_7_2_5_4
label variable DP_7_2_5_4 `"DP.7.2.5.4.- Fijo / Móvil"'

label variable DP_7_2_6_1 `"DP.7.2.6.1.- Correo electrónico 1"'

label variable DP_7_2_6_2 `"DP.7.2.6.2.- Correo electrónico 2"'

label variable DP_14 `"DP.14.- Razón social de la organización, empresa o comunidad"'

label variable DP_15_1 `"DP.15.1.- RUT de la organización, empresa o comunidad"'

label variable DP_16_1 `"DP.16.1.- Número 1"'

label define DP_16_2 1 `"1. Fijo"' 2 `"2. Móvil"' 
label values DP_16_2 DP_16_2
label variable DP_16_2 `"DP.16.2.- Fijo / Móvil"'

label variable DP_16_3 `"DP.16.3.- Número 2"'

label define DP_16_4 1 `"1. Fijo"' 2 `"2. Móvil"' 
label values DP_16_4 DP_16_4
label variable DP_16_4 `"DP.16.4.- Fijo / Móvil"'

label variable DP_17 `"DP.17.- Correo electrónico de contacto de la casa matriz u oficina"'

label define DP_18_1 1 `"1. Avenida - AV"' 2 `"2. Calle - CL"' 3 `"3. Camino (ruta) - CM"' 4 `"4. Carretera (autopista/autoruta) - CR"' 5 `"5. Escalera (escala) - ES"' 6 `"6. Huella (sendero) - HU"' 7 `"7. Pasaje (callejón/privado) - PJ"' 8 `"8. Paseo (peatonal) - PS"' 9 `"9. Puente (bajonivel/sobrenivel/pasarela) - PT"' 
label values DP_18_1 DP_18_1
label variable DP_18_1 `"DP.18.1.- Tipo vía"'

label variable DP_18_2 `"DP.18.2.- Nombre vía"'

label variable DP_18_3 `"DP.18.3.- Número domiciliario"'

label variable DP_18_4 `"DP.18.4.- Entre calles"'

label variable DP_18_5 `"DP.18.5.- Esquina"'

label variable DP_18_6 `"DP.18.6.- Sitio, parcela, predio, loteo, hijuela"'

label variable DP_18_7 `"DP.18.7.- Número sitio, parcela, predio, loteo, hijuela"'

label variable DP_18_8 `"DP.18.8.- Kilómetro"'

label variable DP_18_9 `"DP.18.9.- Kilómetro fracción"'

label variable DP_18_10 `"DP.18.10.- Referencias adicionales"'

label variable DP_18_11 `"DP.18.11.- Observaciones"'

label variable DP_Obs `"DP.Obs.- Observaciones Sección II (Identificación del/la productor/a y de la UPA)"'

label variable US_19 `"US.19.- Superficie total de la UPA (ha)"'

label define US_20 1 `"1. Sí"' 2 `"2. No"' 
label values US_20 US_20
label variable US_20 `"US.20.- ¿Puede indicar el número de rol (o roles) que componen la UPA?"'

label variable US_21_0 `"21.0.-Indicar número de roles"'

label define US_22 1 `"1. Sí"' 2 `"2. No"' 3 `"3. No sabe. No responde"' 
label values US_22 US_22
label variable US_22 `"US.22.- ¿Toda la superficie de la UPA se encuentra dentro del Segmento?"'

label variable US_23 `"US.23.- Superficie de la UPA dentro del Segmento (ha)"'

label variable US_24_1 `"24.1.- Cereales"'

label variable US_24_2 `"24.2.- Leguminosas y Tubérculos"'

label variable US_24_3 `"24.3.- Cultivos industriales"'

label variable US_24_4 `"24.4.- Hortalizas, Hongos, Aromáticas, Medicinales y Condimentarias"'

label variable US_24_5 `"24.5.- Frutales (incluye uva de mesa)"'

label variable US_24_6 `"24.6.- Vides para vinificación"'

label variable US_24_7 `"24.7.- Flores de corte y follaje"'

label variable US_24_8 `"24.8.- Semilleros"'

label variable US_24_9 `"24.9.- Viveros y Césped alfombra"'

label variable US_24_10 `"24.10.- Forrajeras"'

label variable US_24_11 `"24.11.- Plantaciones forestales"'

label variable US_24_12 `"24.12.- Bosque nativo (no plantado)"'

label variable US_24_13 `"24.13.- Praderas mejoradas"'

label variable US_24_14 `"24.14.- Praderas naturales"'

label variable US_24_15 `"24.15.- Terrenos productivos no trabajados en el año agrícola"'

label variable US_24_16 `"24.16.- Matorrales"'

label variable US_24_17 `"24.17.- Terrenos no productivos"'

label variable US_24_18 `"24.18.- Infraestructura (incluye caminos, bodegas, corrales y construcciones en general)"'

label variable US_24_19 `"19.- Superficie total de la UPA"'

label variable US_Obs `"US. Obs.- Observaciones Sección III (Uso del Suelo)"'

label variable SS_25__1 `"SS.25.- Cultivo de Cereales:1. Arroz"'

label variable SS_25__2 `"SS.25.- Cultivo de Cereales:2. Avena (grano seco)"'

label variable SS_25__3 `"SS.25.- Cultivo de Cereales:3. Cebada Cervecera"'

label variable SS_25__4 `"SS.25.- Cultivo de Cereales:4. Maíz"'

label variable SS_25__5 `"SS.25.- Cultivo de Cereales:5. Quínoa"'

label variable SS_25__6 `"SS.25.- Cultivo de Cereales:6. Trigo Blanco"'

label variable SS_25__7 `"SS.25.- Cultivo de Cereales:7. Trigo Candeal"'

label variable SS_25_8__0 `"Otro:0"'

label variable SS_25_8__1 `"Otro:1"'

label variable SS_25_8__2 `"Otro:2"'

label variable SS_25_8__3 `"Otro:3"'

label variable SS_25_8__4 `"Otro:4"'

label variable SS_25_8__5 `"Otro:5"'

label variable SS_25_8__6 `"Otro:6"'

label variable SS_25_8__7 `"Otro:7"'

label variable SS_25_8__8 `"Otro:8"'

label variable SS_25_8__9 `"Otro:9"'

label variable SS_33__1 `"SS.33.- Cultivo de Leguminosas y Tubérculos:1. Arveja (grano seco)"'

label variable SS_33__2 `"SS.33.- Cultivo de Leguminosas y Tubérculos:2. Garbanzo"'

label variable SS_33__3 `"SS.33.- Cultivo de Leguminosas y Tubérculos:3. Lenteja"'

label variable SS_33__4 `"SS.33.- Cultivo de Leguminosas y Tubérculos:4. Poroto (grano seco)"'

label variable SS_33__5 `"SS.33.- Cultivo de Leguminosas y Tubérculos:6. Papas"'

label variable SS_33_5__0 `"Otro:0"'

label variable SS_33_5__1 `"Otro:1"'

label variable SS_33_5__2 `"Otro:2"'

label variable SS_33_5__3 `"Otro:3"'

label variable SS_33_5__4 `"Otro:4"'

label variable SS_33_5__5 `"Otro:5"'

label variable SS_33_5__6 `"Otro:6"'

label variable SS_33_5__7 `"Otro:7"'

label variable SS_33_5__8 `"Otro:8"'

label variable SS_33_5__9 `"Otro:9"'

label variable SS_33_7__0 `"Otro:0"'

label variable SS_33_7__1 `"Otro:1"'

label variable SS_33_7__2 `"Otro:2"'

label variable SS_33_7__3 `"Otro:3"'

label variable SS_33_7__4 `"Otro:4"'

label variable SS_33_7__5 `"Otro:5"'

label variable SS_33_7__6 `"Otro:6"'

label variable SS_33_7__7 `"Otro:7"'

label variable SS_33_7__8 `"Otro:8"'

label variable SS_33_7__9 `"Otro:9"'

label variable SS_41__1 `"SS.41.- Cultivos Industriales:1. Curagüilla"'

label variable SS_41__2 `"SS.41.- Cultivos Industriales:2. Linaza"'

label variable SS_41__3 `"SS.41.- Cultivos Industriales:3. Lupino Dulce"'

label variable SS_41__4 `"SS.41.- Cultivos Industriales:4. Lupino Amargo"'

label variable SS_41__5 `"SS.41.- Cultivos Industriales:5. Maní"'

label variable SS_41__6 `"SS.41.- Cultivos Industriales:6. Maravilla"'

label variable SS_41__7 `"SS.41.- Cultivos Industriales:7. Mimbre"'

label variable SS_41__8 `"SS.41.- Cultivos Industriales:8. Raps (Canola)"'

label variable SS_41__9 `"SS.41.- Cultivos Industriales:9. Remolacha"'

label variable SS_41__10 `"SS.41.- Cultivos Industriales:10. Soya"'

label variable SS_41__11 `"SS.41.- Cultivos Industriales:11. Tabaco"'

label variable SS_41__12 `"SS.41.- Cultivos Industriales:12. Tomate"'

label variable SS_41__13 `"SS.41.- Cultivos Industriales:13. Otros Industriales. Especifique"'

label variable SS_41_13__0 `"Otro:0"'

label variable SS_41_13__1 `"Otro:1"'

label variable SS_41_13__2 `"Otro:2"'

label variable SS_41_13__3 `"Otro:3"'

label variable SS_41_13__4 `"Otro:4"'

label variable SS_41_13__5 `"Otro:5"'

label variable SS_41_13__6 `"Otro:6"'

label variable SS_41_13__7 `"Otro:7"'

label variable SS_41_13__8 `"Otro:8"'

label variable SS_41_13__9 `"Otro:9"'

label variable SS_49__1 `"SS.49.- Especie de frutal:1. Almendro"'

label variable SS_49__2 `"SS.49.- Especie de frutal:2. Arándano azul"'

label variable SS_49__3 `"SS.49.- Especie de frutal:3. Arándano rojo (cranberry)"'

label variable SS_49__4 `"SS.49.- Especie de frutal:4. Avellano Europeo"'

label variable SS_49__5 `"SS.49.- Especie de frutal:5. Cerezo"'

label variable SS_49__6 `"SS.49.- Especie de frutal:6. Ciruelo Europeo"'

label variable SS_49__7 `"SS.49.- Especie de frutal:7. Ciruelo Japonés"'

label variable SS_49__8 `"SS.49.- Especie de frutal:8. Clementina"'

label variable SS_49__9 `"SS.49.- Especie de frutal:9. Damasco"'

label variable SS_49__10 `"SS.49.- Especie de frutal:10. Duraznero (consumo fresco)"'

label variable SS_49__11 `"SS.49.- Especie de frutal:11. Duraznero (tipo conservero)"'

label variable SS_49__12 `"SS.49.- Especie de frutal:12. Frambuesa"'

label variable SS_49__13 `"SS.49.- Especie de frutal:13. Frutilla"'

label variable SS_49__14 `"SS.49.- Especie de frutal:14. Kiwi"'

label variable SS_49__15 `"SS.49.- Especie de frutal:15. Limonero"'

label variable SS_49__16 `"SS.49.- Especie de frutal:16. Mandarina"'

label variable SS_49__17 `"SS.49.- Especie de frutal:17. Manzana"'

label variable SS_49__18 `"SS.49.- Especie de frutal:18. Membrillo"'

label variable SS_49__19 `"SS.49.- Especie de frutal:19. Moras (cultivadas o híbridas)"'

label variable SS_49__20 `"SS.49.- Especie de frutal:20. Naranjo"'

label variable SS_49__21 `"SS.49.- Especie de frutal:21. Nectarino"'

label variable SS_49__22 `"SS.49.- Especie de frutal:22. Nogal"'

label variable SS_49__23 `"SS.49.- Especie de frutal:23. Olivo"'

label variable SS_49__24 `"SS.49.- Especie de frutal:24. Palto"'

label variable SS_49__25 `"SS.49.- Especie de frutal:25. Pera"'

label variable SS_49__26 `"SS.49.- Especie de frutal:26. Pluots"'

label variable SS_49__27 `"SS.49.- Especie de frutal:27. Pomelo"'

label variable SS_49__28 `"SS.49.- Especie de frutal:28. Tuna"'

label variable SS_49__29 `"SS.49.- Especie de frutal:29. Uva de Mesa"'

label variable SS_49__30 `"SS.49.- Especie de frutal:30. Otros Frutales. Especifique"'

label variable SS_49__31 `"SS.49.- Especie de frutal:31. Quinta frutal"'

label variable SS_49_30_1__0 `"Otro:0"'

label variable SS_49_30_1__1 `"Otro:1"'

label variable SS_49_30_1__2 `"Otro:2"'

label variable SS_49_30_1__3 `"Otro:3"'

label variable SS_49_30_1__4 `"Otro:4"'

label variable SS_49_30_1__5 `"Otro:5"'

label variable SS_49_30_1__6 `"Otro:6"'

label variable SS_49_30_1__7 `"Otro:7"'

label variable SS_49_30_1__8 `"Otro:8"'

label variable SS_49_30_1__9 `"Otro:9"'

label variable SS_57__1 `"SS.57.- Categorías de Vides para vinificación:1. Tintas"'

label variable SS_57__2 `"SS.57.- Categorías de Vides para vinificación:2. Blancas"'

label variable SS_65__1 `"SS.65.- Especie de forrajera:1. Alfalfa"'

label variable SS_65__2 `"SS.65.- Especie de forrajera:2. Arveja forrajera"'

label variable SS_65__3 `"SS.65.- Especie de forrajera:3. Avena (forrajera) sola"'

label variable SS_65__4 `"SS.65.- Especie de forrajera:4. Avena asociada"'

label variable SS_65__5 `"SS.65.- Especie de forrajera:5. Ballica anual"'

label variable SS_65__6 `"SS.65.- Especie de forrajera:6. Ballica bianual"'

label variable SS_65__7 `"SS.65.- Especie de forrajera:7. Ballica perenne o persistente"'

label variable SS_65__8 `"SS.65.- Especie de forrajera:8. Cebada forrajera (incluye silo)"'

label variable SS_65__9 `"SS.65.- Especie de forrajera:9. Falaris"'

label variable SS_65__10 `"SS.65.- Especie de forrajera:10. Maíz forrajero (incluye silo)"'

label variable SS_65__11 `"SS.65.- Especie de forrajera:11. Mezcla de forrajeras"'

label variable SS_65__12 `"SS.65.- Especie de forrajera:12. Pasto Ovillo"'

label variable SS_65__13 `"SS.65.- Especie de forrajera:13. Trébol Blanco"'

label variable SS_65__14 `"SS.65.- Especie de forrajera:14. Trébol Rosado"'

label variable SS_65__15 `"SS.65.- Especie de forrajera:15. Otras forrajeras anuales. Especifique"'

label variable SS_65__16 `"SS.65.- Especie de forrajera:16. Otras forrajeras permanentes. Especifique"'

label variable SS_65_15__0 `"Otro:0"'

label variable SS_65_15__1 `"Otro:1"'

label variable SS_65_15__2 `"Otro:2"'

label variable SS_65_15__3 `"Otro:3"'

label variable SS_65_15__4 `"Otro:4"'

label variable SS_65_15__5 `"Otro:5"'

label variable SS_65_15__6 `"Otro:6"'

label variable SS_65_15__7 `"Otro:7"'

label variable SS_65_15__8 `"Otro:8"'

label variable SS_65_15__9 `"Otro:9"'

label variable SS_65_16__0 `"Otro:0"'

label variable SS_65_16__1 `"Otro:1"'

label variable SS_65_16__2 `"Otro:2"'

label variable SS_65_16__3 `"Otro:3"'

label variable SS_65_16__4 `"Otro:4"'

label variable SS_65_16__5 `"Otro:5"'

label variable SS_65_16__6 `"Otro:6"'

label variable SS_65_16__7 `"Otro:7"'

label variable SS_65_16__8 `"Otro:8"'

label variable SS_65_16__9 `"Otro:9"'

label variable SS_Obs `"SS.Obs.- Observaciones Sección IV (Superficie sembrada/plantada por especie o variedad)"'

label define OT_73 1 `"1. Dentro de la UPA y del Segmento"' 2 `"2. Fuera de la UPA, pero dentro del Segmento"' 3 `"3. Fuera del Segmento. Especifique"' 4 `"4. Otro. Especifique"' 
label values OT_73 OT_73
label variable OT_73 `"OT.73.- ¿Dónde fue realizada la encuesta?"'

label variable SS_73_3_1 `"OT.73.3.1.- Fuera del Segmento. Especifique"'

label variable SS_73_4_1 `"OT.73.4.1.- Otro. Especifique"'

label variable OT_OBS `"OBSERVACIONES GENERALES DEL CUESTIONARIO"'

label variable OT_74 `"OT.74.- Hora término de entrevista"'

label define I_0_24_0 1 `"1. Sí"' 2 `"2. No"' 
label values I_0_24_0 I_0_24_0
label variable I_0_24_0 `"I.0.24.0.- ¿INTERRUMPE?"'

label define I_0_24_0_1 1 `"1. No puede acceder al Segmento"' 2 `"2. No puede acceder a la UPA dentro del Segmento"' 3 `"3. Sin informante"' 4 `"4. Informante desconoce información o sin informante idóneo"' 5 `"5. Concerta cita"' 6 `"6. Rechazo"' 7 `"7. Otro. Especifique"' 
label values I_0_24_0_1 I_0_24_0_1
label variable I_0_24_0_1 `"Interrupción"'

label variable I_0_24_0_7_1 `"Otro"'
