clear
insheet using "SS_65_15_1.tab", tab case names

label variable SS_65_15_1__id `"Id in SS_65_15_1"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_66_1 `"SS.66.- Superficie sembrada o plantada (ha)"'

label variable SS_67_1 `"SS.35.- Superficie cosechada (ha)"'

label variable SS_68_1 `"SS.68.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_69_1 `"SS.69.- Producción de la superficie cosechada (total)"'

label define SS_70_1 1 `"1. ton"' 2 `"2. Otra. Especifique"' 
label values SS_70_1 SS_70_1
label variable SS_70_1 `"SS.70.- Unidad de medida"'

label variable SS_70_2_1_1 `"SS.70.2.1.- Otra. Especifique"'

label variable SS_71_1 `"SS.71.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_72_1 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_72_1 SS_72_1
label variable SS_72_1 `"SS.72.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_72_11_1_1 `"SS.72.11.1.- Otra. Especifique"'

label variable nombre_dinamico_Otros_FA `"Calculated variable of type String"'

label variable SS_Otros_Obs_ForrAnuales `"SS.Obs.%rostertitle%"'

label variable SS_66_2 `"SS.66.- Superficie sembrada o plantada (ha)"'

label variable SS_67_2 `"SS.35.- Superficie cosechada (ha)"'

label variable SS_68_2 `"SS.68.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_69_2 `"SS.69.- Producción de la superficie cosechada (total)"'

label define SS_70_2 1 `"1. ton"' 2 `"2. Otra. Especifique"' 
label values SS_70_2 SS_70_2
label variable SS_70_2 `"SS.70.- Unidad de medida"'

label variable SS_70_2_1_2 `"SS.70.2.1.- Otra. Especifique"'

label variable SS_71_2 `"SS.71.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_72_2 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_72_2 SS_72_2
label variable SS_72_2 `"SS.72.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_72_11_1_2 `"SS.72.11.1.- Otra. Especifique"'

label variable nombre_dinamico_Otros_FP `"Calculated variable of type String"'

label variable SS_Otros_Obs_ForrPermanentes `"SS.Obs.%rostertitle%"'

label variable SS_65_15 `"Roster list question"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
