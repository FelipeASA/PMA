clear
insheet using "list_cult_indus.tab", tab case names

label define list_cult_indus__id 1 `"1. Curagüilla"' 2 `"2. Linaza"' 3 `"3. Lupino Dulce"' 4 `"4. Lupino Amargo"' 5 `"5. Maní"' 6 `"6. Maravilla"' 7 `"7. Mimbre"' 8 `"8. Raps (Canola)"' 9 `"9. Remolacha"' 10 `"10. Soya"' 11 `"11. Tabaco"' 12 `"12. Tomate"' 13 `"13. Otros Industriales. Especifique"' 
label values list_cult_indus__id list_cult_indus__id
label variable list_cult_indus__id `"Id in list_cult_indus"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_42 `"SS.42.- Superficie sembrada o plantada (ha)"'

label variable SS_43 `"SS.43.- Superficie cosechada (ha)"'

label variable SS_44 `"SS.44.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_45 `"SS.45.- Producción de la superficie cosechada (total)"'

label define SS_46 1 `"1. qq"' 2 `"2. ton"' 3 `"3. Otra. Especifique"' 
label values SS_46 SS_46
label variable SS_46 `"SS.46.- Unidad de medida"'

label variable SS_46_3_1 `"SS.46.3.1.- Otra. Especifique"'

label variable SS_47 `"SS.47.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_48 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_48 SS_48
label variable SS_48 `"SS.48.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_48_11_1 `"SS.48.11.1.- Otra. Especifique"'

label variable SS_Cult_Ind_Obs `"SS.Obs.- Cultivos Industriales"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
