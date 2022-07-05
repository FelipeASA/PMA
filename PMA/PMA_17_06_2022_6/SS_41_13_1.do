clear
insheet using "SS_41_13_1.tab", tab case names

label variable SS_41_13_1__id `"Id in SS_41_13_1"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_42_1 `"SS.42.- Superficie sembrada o plantada (ha)"'

label variable SS_43_1 `"SS.43.- Superficie cosechada (ha)"'

label variable SS_44_1 `"SS.44.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_45_1 `"SS.45.- Producción de la superficie cosechada (total)"'

label define SS_46_1 1 `"1. qq"' 2 `"2. ton"' 3 `"3. Otra. Especifique"' 
label values SS_46_1 SS_46_1
label variable SS_46_1 `"SS.46.- Unidad de medida"'

label variable SS_46_3_1_1 `"SS.46.3.1.- Otra. Especifique"'

label variable SS_47_1 `"SS.47.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_48_1 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_48_1 SS_48_1
label variable SS_48_1 `"SS.48.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_48_11_1_1 `"SS.48.11.1.- Otra. Especifique"'

label variable nombre_dinamico_Otros_Cult_Ind `"Calculated variable of type String"'

label variable SS_Otros_Obs_Cult_Ind `"SS.Obs.%rostertitle%"'

label variable SS_41_13 `"Roster list question"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
