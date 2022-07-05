clear
insheet using "SS_25_8_1.tab", tab case names

label variable SS_25_8_1__id `"Id in SS_25_8_1"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_26_1 `"SS.26.- Superficie sembrada o plantada (ha)"'

label variable SS_27_1 `"SS.27.- Superficie cosechada (ha)"'

label variable SS_28_1 `"SS.28.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_29_1 `"SS.29.- Producción de la superficie cosechada (total)"'

label define SS_30_1 1 `"1. qq"' 2 `"2. ton"' 3 `"3. Otra. Especifique"' 
label values SS_30_1 SS_30_1
label variable SS_30_1 `"SS.30.- Unidad de medida"'

label variable SS_30_3_1_1 `"SS.30.3.1.- Otra. Especifique"'

label variable SS_31_1 `"SS.31.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_32_1 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_32_1 SS_32_1
label variable SS_32_1 `"SS.32.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_32_11_1_1 `"SS.32.11.1.- Otra. Especifique"'

label variable nombre_dinamico_Otros_Cere `"Calculated variable of type String"'

label variable SS_Otros_Obs_Cere `"SS.Obs.%rostertitle%"'

label variable SS_25_8 `"Roster list question"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
