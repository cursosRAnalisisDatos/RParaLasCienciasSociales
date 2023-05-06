##### Introducción a R para las Ciencias Sociales  ####
#####         SESIÓn 8     #######

####  Revisión de la actividad 7


### CUIDADO con la labor previa: curado de datos.


#####################################
#Leer el archivo que se extrajo del INEGI  ahora de Vivienda
## con 50 registros

viviendaDatos <- read.csv("viviendas_2020-extr.csv", 
                  header = TRUE)
names(viviendaDatos)
viviendaDatos$JEFE_SEXO
### Para saber lo que significa la codificación
## https://www.inegi.org.mx/rnm/index.php/catalog/632/variable/F14/V473?name=JEFE_SEXO

viviendaDatos$JEFE_EDAD
##   https://www.inegi.org.mx/rnm/index.php/catalog/632/search?vk=jefe_edad

## P R E G U N T A S
##1. Ordena los registros por 2 columnas, de forma conjunta: 
###edad y sexo del jefe de familia
viviendaEdadSexo<- viviendaDatos[order(viviendaDatos$JEFE_EDAD, 
                                       viviendaDatos$JEFE_SEXO), ]

##2. Selecciona un criterio tipo mayoría de edad, para generar 
###2 dataframes disjuntos.
## Arbitrariamente elegimos 36 años (2 veces la mayoría de edad)
menores2Edad <- viviendaEdadSexo[viviendaEdadSexo$JEFE_EDAD < 36,]
mayores2Edad <- viviendaEdadSexo[viviendaEdadSexo$JEFE_EDAD >= 36,]
nrow(menores2Edad)
nrow(mayores2Edad)
## Se han generado los 2 dataframes uno de menores de 36 años; 
###otro del complemento


##3. Cruza tu información para que no aparezcan claves, sino los nombres 
##(similar a la pregunta 4 de la actividad 6).
    ## Queremos saber a qué lugares corresponden los datos del extracto
#OJO:  garantizar que el nombre de la columna(s), 
#argumentos "by.x" y "by.y"
datosMunicipio <- read.csv("MUN.csv", header=TRUE)

names(datosMunicipio)
nrow(datosMunicipio)
##  Hemos cargado el datafame de las claves geográficas, que tiene 2502 registros

## Hagamos la unión de ambos dataframes
viviendaConMunicipios <- merge(viviendaEdadSexo, 
                            datosMunicipio, 
                            by.x = c("ENT","MUN"),
                            by.y = c("CVE_ENT","CVE_MUN"))

names(viviendaConMunicipios)
## Vemos que se han agregado las columnas de nombres de entidad y municipio.
viviendaConMunicipios$NOM_ENT

unique(viviendaConMunicipios$NOM_ENT)
## Vemos que sólo corresponde a 1 estado y a 1 municipio!

head(viviendaConMunicipios)

###  Recordemos que estaba ordenado por edad, ascendente y luego sexo;


##4. a) Realiza un histograma para una columna de tus datos. 

## Como usaremos ggplot2, hay que llamarlo

library(ggplot2)

jefeEdad <- ggplot(data = viviendaConMunicipios, aes(x= JEFE_EDAD))

hist1<- jefeEdad + geom_histogram(binwidth = 0.4, col='black', fill='orange', 
                                  alpha=0.4)

## Queremos cambiar las etiquetas de los ejes
hist1 + labs( title = "Edad del jefe de familia",
              x = "Edad (años)",
              y = "frecuencia",
              subtitle = "(INEGI-CPV-2020)")



##4. b) Realiza un histograma por agrupación. Ejemplo: sexo (mujer-hombre) 
##o por mayoría de edad.

head(viviendaConMunicipios)
###  
viviendaConMunicipios<- cbind(viviendaConMunicipios, 
                        grupoSexo= ifelse(viviendaConMunicipios$JEFE_SEXO <=1, 
                                                "HOMBRE", "MUJER"))
##  Este dataframe ya contiene una columna sin clave para sexo.


ggplot(viviendaConMunicipios, aes(x = JEFE_EDAD, fill = grupoSexo)) + 
  geom_histogram(binwidth = 0.8, col='black', alpha=0.4) +
   labs(title = "CPV 2020 Vivienda extracto",
          x = "Edad del jefe de familia",
          y = "frecuencia",
          subtitle = "Edad ascendente")


### FIN de la actividad 7




############-------------------##############
######   Algunas funciones de R para estadística 

summary(viviendaDatos)

## Medidas de tendencia central: media, mediana

## MEDIA o promedio 
#####################
mean(data.frame$Nombre_columna)
      ##Donde la columna es numérica

##Ejemplos:  (usando los otros 2 dataframes)
mean(viviendaDatos$JEFE_EDAD)
mean(mayores2Edad$JEFE_EDAD)
mean(menores2Edad$JEFE_EDAD)

## Promedio de varias columnas al mismo tiempo
 ##Queremos media de eletrodomésticos refri, lavadora, horno
sapply(viviendaDatos[,22:24], mean)

## MEDIANA
#####################
median(data.frame$Nombre_columna)
##Ejemplos:  
median(viviendaDatos$JEFE_EDAD)
median(mayores2Edad$JEFE_EDAD)
median(menores2Edad$JEFE_EDAD)

## para varias columnas al mismo tiempo
sapply(viviendaDatos[,22:24], median)



### MEDIDAS DE DISPERSIÓN
##############################

### RANGO
## Conceptualmnete es:
rango = max() - min()
### Sintaxis
rango = max(data.frame$Nombre_columna) - min(data.frame$Nombre_columna)
rango


##Ejemplos:  
rango1 = max(viviendaDatos$JEFE_EDAD) - min(viviendaDatos$JEFE_EDAD)
rango1

rango2 = max(mayores2Edad$JEFE_EDAD) - min(mayores2Edad$JEFE_EDAD)
rango2

rango3 = max(menores2Edad$JEFE_EDAD) - min(menores2Edad$JEFE_EDAD)
rango3


### VARIANZA Y DESVIACIÓN ESTÁNDAR 
#############

varianza = var(data.frame$Nombre_columna)
desv_est = sd(data.frame$Nombre_columna)

##Ejemplos:  
varianza1 = var(viviendaDatos$JEFE_EDAD)
varianza1
varianza2 = var(mayores2Edad$JEFE_EDAD)
varianza2
varianza3 = var(menores2Edad$JEFE_EDAD)
varianza3

viviendaDatos$JEFE_EDAD
mayores2Edad$JEFE_EDAD
menores2Edad$JEFE_EDAD


desv_est1 = sd(viviendaDatos$JEFE_EDAD)
desv_est1
desv_est2 = sd(mayores2Edad$JEFE_EDAD)
desv_est2
desv_est3 = sd(menores2Edad$JEFE_EDAD)
desv_est3


###############
### Paquetes colaborativos:
install.packages("pastecs")
require(pastecs)

options(width = 300)
estadisticos = stat.desc(viviendaDatos)

round(estadisticos, 2)

####glimpse(viviendaDatos)


install.packages('psych')
require(psych)

names(viviendaConMunicipios)
describeBy(viviendaConMunicipios$JEFE_EDAD, 
           group = viviendaConMunicipios$grupoSexo, 
           mat = T, 
           digits = 2)

###  la opción mat = TRUE imprime una matriz en lugar de una lista
###  La opción digits = 2 redondea  a 2 decimales, los valores que calcule



################################
