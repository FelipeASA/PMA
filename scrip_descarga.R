library(susor) #Ejecutando esta libreria se debe utilizar desde la linea 25
library(glue)
library(httr)
library(jsonlite)
library(lubridate)
library(rio)
library(tidyverse)
library(plotly)
library(httr)
library(dplyr)
library(stringr)
install.packages("cli")

#remove.packages("cli")
#install.packages("cli")

#devtools::install_github("araupontones/susor")


survey_dir <- "C:/Users/sheli/OneDrive/Escritorio/Agro"
susor_qn_variable <- "PMA_17_06_2022"
susor_qn_version <- 6
susor_quid <- "16611142-900f-4613-9200-dea6eb1d367d$4"
susor_server <- "https://encuestass.ine.cl/agropecuaria"

##Credenciales usuario API
susor_password <- "(Ine2022d)"
susor_user <- "API_AGRO"

susor_login(susor_server = susor_server,
            susor_user = susor_user,
            susor_password = susor_password,
            susor_dir_downloads = "PMA/",
            susor_dir_raw = "PMA/raw")

post_export <- susor_generate_file(susor_quid = susor_quid,
                                   susor_format = "TABULAR")

JobID <- post_export$jobID
apiGenerate <- post_export$apiGenerate


# Identificar el status del request. Esto se usa por si el servidor está lento
Json_GET = tempfile(fileext = ".json")
response_file_status = GET(apiGenerate, authenticate(susor_user,
                                                     susor_password),
                           encode = "json",
                           write_disk(Json_GET,
                                      overwrite = T),
                           query = list(questionnaireIdentity = susor_quid)
)

file_status_data = jsonlite::fromJSON(Json_GET)
file_status = file_status_data[file_status_data$JobId == JobID, ]$ExportStatus


# Genera mensajes al usuario, mientras el request está siendo procesado. Cuando cambia de status, el loop termina
while (file_status != "Completed") {
  Sys.sleep(2)
  message(paste("Creating", susor_qn_variable, "version:", susor_qn_version, "in Server"))
  Json_GET = tempfile(fileext = ".json")
  response_file_status = GET(apiGenerate, authenticate(susor_user,
                                                       susor_password),
                             encode = "json",
                             write_disk(Json_GET,
                                        overwrite = T),
                             query = list(questionnaireIdentity = susor_quid)
  )
  
  file_status_data = jsonlite::fromJSON(Json_GET)
  file_status = file_status_data[file_status_data$JobId == JobID, ]$ExportStatus
  
  
}

#Se genera la url para hacer la exportación. Esto necesita el jobid y la url del servidor
apiExport <- sprintf("%s/api/v2/export/%s/file", susor_server, JobID)

#Este get hace la exportación
response_export <- GET(apiExport, authenticate(susor_user, susor_password))

#Sacar el estatus de la exportación
status <- response_export$status_code

# Crear un archivo temporal comprimido, en el cual se guardará la descarga
unzip_name <- paste0(susor_qn_variable,"_", susor_qn_version)
zip_name <- paste0(unzip_name,".zip")
zipfile <- file.path(tempdir(),zip_name)

# Crear el directorio en el cual será descomprimido el archivo
outputdir <- file.path(susor_dir_downloads, unzip_name )

if (!file.exists(outputdir)){
  dir.create(outputdir)
  
}

# Abrir la conexión del archivo temporal
filecon <- file(zipfile, "wb")

#Escribir en el archivo
writeBin(response_export$content, filecon)

#Cerrar la conexión con el archivo
close(filecon)

## Descomprimir los datos en el directorio seleccionado
unzip(zipfile = zipfile, overwrite = TRUE,
      exdir = outputdir,
      unzip = "internal")

