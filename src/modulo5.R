#1. definicion de mi espacio de trabajo
getwd()
#2.leer el archivo
setwd("C:/Users/UsuariO/Desktop/cursoR/data/")
getwd()
datos <- read.csv("censo.csv", 
                  header = FALSE)
datos
datosTmp <- na.omit(datos)
datosTmp

library(dplyr)
install.packages("dplyr")

