clear
insheet using "list_Forrajera.tab", tab case names

label define list_Forrajera__id 1 `"1. Alfalfa"' 2 `"2. Arveja forrajera"' 3 `"3. Avena (forrajera) sola"' 4 `"4. Avena asociada"' 5 `"5. Ballica anual"' 6 `"6. Ballica bianual"' 7 `"7. Ballica perenne o persistente"' 8 `"8. Cebada forrajera (incluye silo)"' 9 `"9. Falaris"' 10 `"10. Maíz forrajero (incluye silo)"' 11 `"11. Mezcla de forrajeras"' 12 `"12. Pasto Ovillo"' 13 `"13. Trébol Blanco"' 14 `"14. Trébol Rosado"' 15 `"15. Otras forrajeras anuales. Especifique"' 16 `"16. Otras forrajeras permanentes. Especifique"' 
label values list_Forrajera__id list_Forrajera__id
label variable list_Forrajera__id `"Id in list_Forrajera"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_66 `"SS.66.- Superficie sembrada o plantada (ha)"'

label variable SS_67 `"SS.67.- Superficie cosechada (ha)"'

label variable SS_68 `"SS.68.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_69 `"SS.69.- Producción de la superficie cosechada (total)"'

label define SS_70 1 `"1. ton"' 2 `"2. Otra. Especifique"' 
label values SS_70 SS_70
label variable SS_70 `"SS.70.- Unidad de medida"'

label variable SS_70_2_1 `"SS.70.2.1.- Otra. Especifique"'

label variable SS_71 `"SS.71.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_72 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_72 SS_72
label variable SS_72 `"SS.72.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_72_11_1 `"SS.72.11.1.- Otra. Especifique"'

label variable SS_Forrajera_Obs `"SS.Obs.- Especie de Forrajera"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
