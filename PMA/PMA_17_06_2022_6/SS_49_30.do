clear
insheet using "SS_49_30.tab", tab case names

label variable SS_49_30__id `"Id in SS_49_30"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_50_1_1 `"SS.50.- Superficie sembrada o plantada (ha)"'

label variable SS_51_1 `"SS.51.- Superficie cosechada (ha)"'

label variable SS_52_1 `"SS.52.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_53_1 `"SS.53.- Producción de la superficie cosechada (total)"'

label define SS_54_1 1 `"1. qq"' 3 `"3. Otra. Especifique"' 
label values SS_54_1 SS_54_1
label variable SS_54_1 `"SS.54.- Unidad de medida"'

label variable SS_54_3_1_1 `"SS.54.3.1.- Otra. Especifique"'

label variable SS_55_1 `"SS.55.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_56_1 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_56_1 SS_56_1
label variable SS_56_1 `"SS.56.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_56_11_1_1 `"SS.56.11.1.- Otra. Especifique"'

label variable nombre_dinamico_Otros_Frutales `"Calculated variable of type String"'

label variable SS_Otros_Obs_Frutales `"SS.Obs.%rostertitle%"'

label variable SS_49_30_1 `"Roster list question"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
