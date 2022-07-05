clear
insheet using "SS_33_5_1.tab", tab case names

label variable SS_33_5_1__id `"Id in SS_33_5_1"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_34_1 `"SS.34.- Superficie sembrada o plantada (ha)"'

label variable SS_35_1 `"SS.35.- Superficie cosechada (ha)"'

label variable SS_36_1 `"SS.36.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_37_1 `"SS.37.- Producción de la superficie cosechada (total)"'

label define SS_38_1 1 `"1. qq"' 2 `"2. ton"' 3 `"3. Otra. Especifique"' 
label values SS_38_1 SS_38_1
label variable SS_38_1 `"SS.38.- Unidad de medida"'

label variable SS_38_3_1_1 `"SS.38.3.1.- Otra. Especifique"'

label variable SS_39_1 `"SS.39.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_40_1 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_40_1 SS_40_1
label variable SS_40_1 `"SS.40.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_40_11_1_1 `"SS.40.11.1.- Otra. Especifique"'

label variable nombre_dinamico_Otros_Leg `"Calculated variable of type String"'

label variable SS_Otros_Obs_Leg `"SS.Obs.%rostertitle%"'

label variable SS_34_2 `"SS.34.- Superficie sembrada o plantada (ha)"'

label variable SS_35_2 `"SS.35.- Superficie cosechada (ha)"'

label variable SS_36_2 `"SS.36.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_37_2 `"SS.37.- Producción de la superficie cosechada (total)"'

label define SS_38_2 1 `"1. qq"' 2 `"2. ton"' 3 `"3. Otra. Especifique"' 
label values SS_38_2 SS_38_2
label variable SS_38_2 `"SS.38.- Unidad de medida"'

label variable SS_38_3_1_2 `"SS.38.3.1.- Otra. Especifique"'

label variable SS_39_2 `"SS.39.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_40_2 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_40_2 SS_40_2
label variable SS_40_2 `"SS.40.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_40_11_1_2 `"SS.40.11.1.- Otra. Especifique"'

label variable nombre_dinamico_Otros_Tub `"Calculated variable of type String"'

label variable SS_Otros_Obs_Tub `"SS.Obs.%rostertitle%"'

label variable SS_33_5 `"Roster list question"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
