clear
insheet using "list_LegumTuber.tab", tab case names

label define list_LegumTuber__id 1 `"1. Arveja (grano seco)"' 2 `"2. Garbanzo"' 3 `"3. Lenteja"' 4 `"4. Poroto (grano seco)"' 5 `"6. Papas"' 
label values list_LegumTuber__id list_LegumTuber__id
label variable list_LegumTuber__id `"Id in list_LegumTuber"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_34 `"SS.34.- Superficie sembrada o plantada (ha)"'

label variable SS_35 `"SS.35.- Superficie cosechada (ha)"'

label variable SS_36 `"SS.36.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_37 `"SS.37.- Producción de la superficie cosechada (total)"'

label define SS_38 1 `"1. qq"' 2 `"2. ton"' 3 `"3. Otra. Especifique"' 
label values SS_38 SS_38
label variable SS_38 `"SS.38.- Unidad de medida"'

label variable SS_38_3_1 `"SS.38.3.1.- Otra. Especifique"'

label variable SS_39 `"SS.39.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_40 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_40 SS_40
label variable SS_40 `"SS.40.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_40_11_1 `"SS.40.11.1.- Otra. Especifique"'

label variable SS_LegumTuber_Obs `"SS.Obs.- Leguminosas y Tubérculos"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
