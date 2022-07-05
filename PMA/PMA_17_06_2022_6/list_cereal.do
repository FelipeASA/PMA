clear
insheet using "list_cereal.tab", tab case names

label define list_cereal__id 1 `"1. Arroz"' 2 `"2. Avena (grano seco)"' 3 `"3. Cebada Cervecera"' 4 `"4. Maíz"' 5 `"5. Quínoa"' 6 `"6. Trigo Blanco"' 7 `"7. Trigo Candeal"' 
label values list_cereal__id list_cereal__id
label variable list_cereal__id `"Id in list_cereal"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_26 `"SS.26.- Superficie sembrada o plantada (ha)"'

label variable SS_27 `"SS.27.- Superficie cosechada (ha)"'

label variable SS_28 `"SS.28.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_29 `"SS.29.- Producción de la superficie cosechada (total)"'

label define SS_30 1 `"1. qq"' 2 `"2. ton"' 3 `"3. Otra. Especifique"' 
label values SS_30 SS_30
label variable SS_30 `"SS.30.- Unidad de medida"'

label variable SS_30_3_1 `"SS.30.3.1.- Otra. Especifique"'

label variable SS_31 `"SS.31.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_32 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_32 SS_32
label variable SS_32 `"SS.32.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_32_11_1 `"SS.32.11.1.- Otra. Especifique"'

label variable SS_Cereales_Obs `"SS.Obs.- Cereales"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
