clear
insheet using "list_frutal.tab", tab case names

label define list_frutal__id 1 `"1. Almendro"' 2 `"2. Arándano azul"' 3 `"3. Arándano rojo (cranberry)"' 4 `"4. Avellano Europeo"' 5 `"5. Cerezo"' 6 `"6. Ciruelo Europeo"' 7 `"7. Ciruelo Japonés"' 8 `"8. Clementina"' 9 `"9. Damasco"' 10 `"10. Duraznero (consumo fresco)"' 11 `"11. Duraznero (tipo conservero)"' 12 `"12. Frambuesa"' 13 `"13. Frutilla"' 14 `"14. Kiwi"' 15 `"15. Limonero"' 16 `"16. Mandarina"' 17 `"17. Manzana"' 18 `"18. Membrillo"' 19 `"19. Moras (cultivadas o híbridas)"' 20 `"20. Naranjo"' 21 `"21. Nectarino"' 22 `"22. Nogal"' 23 `"23. Olivo"' 24 `"24. Palto"' 25 `"25. Pera"' 26 `"26. Pluots"' 27 `"27. Pomelo"' 28 `"28. Tuna"' 29 `"29. Uva de Mesa"' 30 `"30. Otros Frutales. Especifique"' 31 `"31. Quinta frutal"' 
label values list_frutal__id list_frutal__id
label variable list_frutal__id `"Id in list_frutal"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable SS_50_1 `"SS.50.- Superficie sembrada o plantada (ha)"'

label variable SS_51 `"SS.51.- Superficie cosechada (ha)"'

label variable SS_52 `"SS.52.- Superficie perdida, descartada o abandonada (ha)"'

label variable SS_53 `"SS.53.- Producción de la superficie cosechada (total)"'

label define SS_54 1 `"1. qq"' 3 `"3. Otra. Especifique"' 
label values SS_54 SS_54
label variable SS_54 `"SS.54.- Unidad de medida"'

label variable SS_54_2_1 `"SS.54.2.1.- Otra. Especifique"'

label variable SS_55 `"SS.55.- Peso promedio de la unidad seleccionada (kg)"'

label define SS_56 1 `"1. Intermediario"' 2 `"2. Terminal mayorista"' 3 `"3. Canal tradicional"' 4 `"4. Ferias libres"' 5 `"5. Agroindustria"' 6 `"6. HORECA"' 7 `"7. Supermercado"' 8 `"8. Autoconsumo"' 9 `"9. Trueque"' 10 `"10. Cosechado y perdido"' 11 `"11. Otro. Especifique"' 
label values SS_56 SS_56
label variable SS_56 `"SS.56.- ¿Cuál fue el principal destino de la producción?"'

label variable SS_56_11_1 `"SS.56.11.1.- Otra. Especifique"'

label variable SS_Cult_Frutal `"SS.Obs.- Especie de frutal"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
