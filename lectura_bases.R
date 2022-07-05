
library(dplyr)
library(tidyverse)
library(writexl)
library(lubridate)
options(scipen=999)

#directorio <- read.table("C:/Users/sheli/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_02_05_2022_1_Tabular_All (7)/PMA_02_05_2022.tab", encoding = "UTF-8")
#list_cereal <- read.delim2("C:/Users/Fasaavedraa/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_30_05_2022_1_Tabular_All (7)/list_cereal.tab",encoding = "UTF-8")
rol <- read.delim2("C:/Users/Fasaavedraa/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_30_05_2022_1_Tabular_All (7)/Rol.tab",encoding = "UTF-8")
otro <- read.delim2("C:/Users/Fasaavedraa/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_30_05_2022_1_Tabular_All (7)/Otro.tab",encoding = "UTF-8")

directorio <- read.delim2("C:/Users/sheli/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_02_05_2022_1_Tabular_All (7)/PMA_02_05_2022.tab",encoding = "UTF-8")
list_cereal <- read.delim2("C:/Users/sheli/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_02_05_2022_1_Tabular_All (7)/list_cereal.tab",encoding = "UTF-8")
surf_fisica <- read.delim2("C:/Users/sheli/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_02_05_2022_1_Tabular_All (7)/suf_fisica_lista.tab",encoding = "UTF-8")

base_completa <- left_join(directorio, list_cereal, by="interview__id")
base_completa <- left_join(base_completa, surf_fisica, by="interview__id")
base_completa <- base_completa %>% mutate(resultado_gestion=case_when((I_0_24>0)~"Indagación no lograda Interrupción",
                                                                      (I_0_15>0)~ "Indagación no lograda Cierre",
                                                                      (I_0_11>0~ "Indagación Lograda")),
                                          motivo_cierre=case_when(
                                            (I_0_24_1>0 | I_0_24_7_1>0) ~ "Interrupción",
                                            (I_0_15>0 | I_0_15_7_1>0) ~ "Cierre")
                                          )

interview_actions <- read.delim2("C:/Users/sheli/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_02_05_2022_1_Tabular_All (7)/interview__actions.tab",encoding = "UTF-8")
#interview_actions <-read.delim2("C:/Users/Fasaavedraa/OneDrive - Instituto Nacional de Estadisticas/datos agro/PMA_30_05_2022_1_Tabular_All (7)/interview__actions.tab")
tabla1 <- directorio %>% select(interview__id,I_0_1,I_0_4,I_0_5, I_0_0,OT_74, GEO)

##Falta mutar variable número de upa
##Mutar I_0_0 para separar fecha y hora
##Ultimas 2 columnas hay q operacionalizar



n_upa <- directorio %>% select(interview__id,I_0_21,  I_0_21_50_1, I_0_14, I_0_14_50_1, I_0_21_50_1)
n_upa$I_0_21 <- replace_na(n_upa$I_0_21,0)
n_upa$I_0_21_50_1 <- replace_na(n_upa$I_0_21_50_1,0)
n_upa$I_0_14 <- replace_na(n_upa$I_0_14,0)
n_upa$I_0_14_50_1 <- replace_na(n_upa$I_0_14_50_1,0)
n_upa$I_0_21_50_1 <- replace_na(n_upa$I_0_21_50_1,0)
n_upa <- n_upa %>% mutate(UPA=I_0_21+I_0_21_50_1+I_0_14+I_0_14_50_1++I_0_21_50_1)

base_completa <- left_join(base_completa, n_upa, by="interview__id")



tabla1 <- base_completa %>% select(interview__id, I_0_1, I_0_4, UPA, I_0_5, I_0_0, resultado_gestion, motivo_cierre) %>% unique()
tabla1$I_0_0 <- as_datetime(tabla1$I_0_0)
names(tabla1)[2] <- "Número identificación del recolector"
names(tabla1)[3] <- "Número de segmento"
names(tabla1)[4] <- "Número de UPA"
names(tabla1)[5] <- "Número de visita"

tabla1 <- tabla1 %>%
  mutate(Fecha =as.character(lubridate::date(I_0_0)), Hora=hms::as_hms(I_0_0))

tabla1 <- tabla1[, c(1,2,3,4,5,9,10,7,8)]






var_tab1 <-base_completa %>% select(interview__id, I_0_4, UPA)

tabla2 <-interview_actions %>% select(interview__id,date,action,originator, responsible__name, responsible__role) %>% filter(action == 1 | action==3 | action==5|action==6)
tabla2 <-tabla2 %>% mutate(Estado = case_when(action == 1 ~ "Entrevistador Asignado",
                                              action == 3 ~ "Entrevista Completa",
                                              action == 5 ~ "Aprovada por el supervison",
                                              action == 6 ~ "Aprovada por Sede"
                                              
))


tabla2 <- left_join(var_tab1, tabla2, by="interview__id")

tabla2 <- tabla2 %>% select(interview__id, I_0_4, UPA, originator,responsible__name, Estado)
names(tabla2)[2] <-"Número de segmento" 
names(tabla2)[3] <-"Número de UPA"
names(tabla2)[4] <-"Nombre de Usuario"
names(tabla2)[5] <-"Responsable de la acción"

#########################################################################################################################

superficie_upa <- base_completa %>% select(interview__id,I_0_16, I_0_22, US_23)


superficie_upa$I_0_16[superficie_upa$I_0_16==""] <- NA
superficie_upa$I_0_22[superficie_upa$I_0_22==""] <- NA
superficie_upa$US_23[superficie_upa$US_23==""] <- NA

superficie_upa[is.na(superficie_upa)] <- 0

superficie_upa$I_0_16 <- as.numeric(superficie_upa$I_0_16)
superficie_upa$I_0_22 <- as.numeric(superficie_upa$I_0_22)



str(superficie_upa)
superficie_upa <- superficie_upa %>% select(superficie)
base_completa <- cbind(base_completa, superficie_upa)


superficie_upa <- superficie_upa %>% mutate(superficie=I_0_16+I_0_22+US_23) %>% select(-I_0_16, -I_0_22, -US_23)
tabla3 <- base_completa %>% select(interview__id,I_0_1,I_0_4, I_0_5,I_0_24, I_0_15, I_0_11,I_0_12 ,I_0_24_1,
                                           I_0_24_7_1, I_0_15_7_1, superficie, UPA, I_0_0) %>% mutate(resultado_de_gestion=case_when((I_0_24>0)~"Indagación no lograda Interrupción",
                                                                                                              (I_0_15>0)~ "Indagación no lograda Cierre",
                                                                                                              (I_0_11>0~ "Indagación Lograda")), 
                                                                                                              motivo_cierre=case_when(
                                                                                                              (I_0_24_1>0 | I_0_24_7_1>0) ~ "Interrupción",
                                                                                                              (I_0_15>0 | I_0_15_7_1>0) ~ "Cierre"),
                                                                                                              obs_actividad=case_when(
                                                                                                                (I_0_12==1)~ "Sí",
                                                                                                                (I_0_12==2)~ "No"
                                                                                                              ),
                                                                                                      tipo_indagación=case_when(
                                                                                                        I_0_1==1~ "Cambio uso de suelo",
                                                                                                        I_0_1==2~ "Sin actividad"
                                                                                                      )
                                                                                                              )
tabla3 <-  tabla3 %>% select(interview__id, I_0_1, I_0_4, UPA, I_0_5,superficie, I_0_0, resultado_de_gestion,motivo_cierre,tipo_indagación,obs_actividad)

names(tabla3)[2] <- "Número de identificación del recolector"
names(tabla3)[3] <- "Número de segmento"
names(tabla3)[4] <- "Número de UPA"
names(tabla3)[5] <- "Número de visita"
names(tabla3)[6] <- "Superficie de la UPA dentro del segmento"
names(tabla3)[7] <- "Fecha"
names(tabla3)[8] <- "Resultado de la gestión"
names(tabla3)[9] <- "Motivo de cierre o interrupción"
names(tabla3)[10] <- "Tipo de indagación lograda"
names(tabla3)[11] <- "¿Se observa actividad?"

##################################################################################
#Tabla 4

#################################################################################
# 


################################################################
write_xlsx(base_completa, "base_completa.xlsx")
write_xlsx(tabla1, "tabla1.xlsx")
write_xlsx(tabla2, "tabla2.xlsx")
write_xlsx(tabla3, "tabla3.xlsx")


#date_interviewerassigned <- tabla2 %>% filter(action == 1) %>% select(interview__id, date)
#date_completed <- tabla2 %>% filter(action == 3) %>%  select(interview__id, date)
#date_aprovedsupervisor <- tabla2 %>% filter(action == 5) %>%  select(interview__id, date)
#date_aprovedHQ <- tabla2 %>% filter(action == 6) %>%  select(interview__id, date)

#tabla2 <- tabla2 %>% filter(action==1 | action == 3 | action == 5 | action == 6) %>% arrange(interview__id)
