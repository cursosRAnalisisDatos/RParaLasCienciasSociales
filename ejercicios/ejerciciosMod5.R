setwd("/home/virgin/Downloads/RParaLasCienciasSociales-main/")
getwd()

datosInegi<-read.csv("data/MuestraInegi-2020-personas.csv", header=TRUE)
ncol(datosInegi)
nrow(datosInegi)
class(datosInegi)

# 1. ¿Cuántas religiones hay?
columnaReligion <- datosInegi$RELIGION
length(unique(columnaReligion))

# 2. Ordena los registros por edad, y luego por religión.
# - La edad en orden ascendente
# - La religion en orden decreciente
datosInegiOrdenado <- datosInegi[order(datosInegi$EDAD, datosInegi$RELIGION, decreasing = c(FALSE, TRUE)), ]
datosInegiOrdenado

# 3. ¿Cuántos registros hay de menores de edad? ¿Cuántos de mayores de edad?
menoresEdad <- datosInegi[datosInegi$EDAD < 18,]
mayoresEdad <- datosInegi[datosInegi$EDAD >= 18,]
nrow(menoresEdad)
nrow(mayoresEdad)

# 4. 
# a. ¿Cuántos municipios diferentes presentan estos registros?  
# b. Muestra tus registros ordenados alfabéticamente por el nombre del municipio y no por la clave 
# (Hint. Usa un merge con el archivo MUN.csv)
# a.
municipios <- datosInegi$MUN
municipios
length(unique(municipios))
length(municipios)

#
#IMPORTANTE: en esta solución haremos un merge, pero tenemos que garantizar que el nombre de la columna(s), 
#por el que se mezcla, concuerde, eso lo hacemos con los argumentos "by.x" y "by.y"
datosMunicipio <- read.csv("data/MUN.csv", header=TRUE)
datosInegiConMunicipios <- merge(datosInegi, 
                                 datosMunicipio, 
                                 by.x = c("ENT","MUN"),
                                 by.y = c("CVE_ENT","CVE_MUN"))

datosInegiConMunicipiosOrdenado <- datosInegiConMunicipios[
                                          order(datosInegiConMunicipios$NOM_ENT, 
                                                datosInegiConMunicipios$NOM_MUN), ]
datosInegiConMunicipiosOrdenado

# Ejemplo de exportacion de salida en el mismo formato CSV
write.csv(datosInegiConMunicipiosOrdenado,"data/datosInegiConMunicipio.csv")
