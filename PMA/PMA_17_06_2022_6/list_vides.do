clear
insheet using "list_vides.tab", tab case names

label define list_vides__id 1 `"1. Tintas"' 2 `"2. Blancas"' 
label values list_vides__id list_vides__id
label variable list_vides__id `"Id in list_vides"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_58 `"SS.58.- Superficie sembrada o plantada (ha)"'

label variable SS_59 `"SS.59.- Superficie cosechada (ha)"'

label variable SS_60 `"SS.60.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_61 `"SS.61.- Producción de la superficie cosechada (total)"'

label define SS_62 1 `"1. qq"' 3 `"3. Otra. Especifique"' 
label values SS_62 SS_62
label variable SS_62 `"SS.62.- Unidad de medida"'

label variable SS_62_2_1 `"SS.62.2.1.- Otra. Especifique"'

label variable SS_63 `"SS.63.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_64 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_64 SS_64
label variable SS_64 `"SS.64.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_64_11_1 `"SS.64.11.1.- Otra. Especifique"'

label variable SS_Cult_Vides `"SS.Obs.- Categorías de Vides para vinificación"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
