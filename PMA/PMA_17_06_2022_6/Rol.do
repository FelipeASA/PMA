clear
insheet using "Rol.tab", tab case names

label variable Rol__id `"Id in Rol"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable US_21_1 `"US.21.1.- Manzana"'

label variable US_21_2 `"US.21.2.- Predio"'

label define US_21_3 1 `"1. CHÉPICA"' 2 `"2. CHIMBARONGO"' 3 `"3. CODEGUA"' 4 `"4. COINCO"' 5 `"5. COLTAUCO"' 6 `"6. DOÑIHUE"' 7 `"7. GRANEROS"' 8 `"8. LA ESTRELLA"' 9 `"9. LAS CABRAS"' 10 `"10. LITUECHE"' 11 `"11. LOLOL"' 12 `"12. MACHALÍ"' 13 `"13. MALLOA"' 14 `"14. MARCHIHUE"' 15 `"15. MOSTAZAL"' 16 `"16. NANCAGUA"' 17 `"17. NAVIDAD"' 18 `"18. OLIVAR"' 19 `"19. PALMILLA"' 20 `"20. PAREDONES"' 21 `"21. PERALILLO"' 22 `"22. PEUMO"' 23 `"23. PICHIDEGUA"' 24 `"24. PICHILEMU"' 25 `"25. PLACILLA"' 26 `"26. PUMANQUE"' 27 `"27. QUINTA DE TILCOCO"' 28 `"28. RANCAGUA"' 29 `"29. RENGO"' 30 `"30. REQUÍNOA"' 31 `"31. SAN FERNANDO"' 32 `"32. SAN VICENTE"' 33 `"33. SANTA CRUZ"' 
label values US_21_3 US_21_3
label variable US_21_3 `"Comuna"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
