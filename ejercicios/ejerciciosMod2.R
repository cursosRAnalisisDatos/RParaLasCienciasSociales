# Title: sCRIPT 2

# Purpose : Principios del curso

# Project number: #001

# DataFile:''

# Author: Yo merito 
# Contact details: a@

# Date script created: Mon Dec 2 16:06:44 2019 -----------
# Date script last modified: Thu Dec 12 16:07:12 2019 ----

# package dependencies


######


### Introducción a R para las ciencias sociales  ###
##############  SESIÓN 2: 20 de abril de 2023    #######
##### NAME  #####


help()
help(rnorm)
help(rnoorm)   ##Esto fue escrito para mostrar la importancia de la
##sintaxis (es decir que sea exacta la expresión)

help.start()  ## Esta funcion despliega ta ta ta....
getwd()   ##Esta carpeta no coincide cn la que cree en el escritorio
setwd("C:/Users/UsuariO/Desktop/cursoRParaLasCienciasSociales/sesion1")
setwd("C:/Users/DiplomadoMCyCC/Desktop/CursoR")

setwd ("/Users/virg/Documents/")

## Volvemos a ver dónde está nuestro directorio de trabajo
getwd()
 ## ahora sí dirije 

### Usarlo como calculadora
5+7
20*3*16^(.5)
7-4^5
4 + 5 * 2
(4 + 5) * 2
4 + (5*2)
2^3
2**3
2/2
10%%4
## Ejemplo confuso
3 + "veinte"
"ash ggg jb parrafos jsbras"  < "b hjbshcbjsd ook"  ## ordenamiento alfabético
5 < 3
5 <= 3
5 > 3
5 == 3
4 == 4
4 == 1+1+1+1
5 != 3   ## pregunta del tipo ¿'5 no es igual que el 3'?

log(1)              # logarithm to base e
log10(1)            # logarithm to base 10
exp(1)              # natural antilog
sqrt(4)             # square root

##Sobre la función factorial  n!  
## 2! = 1*2
##  5! = 1*2*3*4*5
factorial(5)




###### 



edades <- 45
rm(edad)

##No corre en todos los equipos    xfun::session_info()   

##R version 4.2.1 (2022-06-23 ucrt)
#Platform: x86_64-w64-mingw32/x64 (64-bit)
#Running under: Windows 10 x64 (build 19044)

#Locale:
#  LC_COLLATE=Spanish_Mexico.utf8  LC_CTYPE=Spanish_Mexico.utf8   
#LC_MONETARY=Spanish_Mexico.utf8 LC_NUMERIC=C                   
#LC_TIME=Spanish_Mexico.utf8    

#Package version:
 # compiler_4.2.1  graphics_4.2.1  grDevices_4.2.1 stats_4.2.1    
#tools_4.2.1     utils_4.2.1     xfun_0.33    

############3
### Introducción a R para las ciencias sociales  ###
##############  SESIÓN 2: 4 de mayo de 2024   #######
##### Eduardo Vizcaya  


######  EJEMPLOS    ########

#1 Escribe un programa para calcular el área de un triángulo, dadas su base y su altura.

## Primera forma
####1. Crear los objetos, e ir introduciendo los valores numéricos
b <- as.numeric(readline("Ingrese la base del trinángulo:"))

h <- as.numeric(readline("Ingrese la altura del triángulo:"))

cat("El área del triángulo es", b*h/2, "unidades cuadradas")


## Segunda forma
## mismos objetos y uno para el área A

A <- b*h/2
cat("El área del triángulo es (A)")


############
#2 Escribe un programa para calcular el índice de masa corporal (IMC) de una persona, pidiendo al usuario su peso (en kg) y estatura (en metros); y lo almacene en una variable, 
# redondeado a 2 decimales

####1. Crear los objetos, e ir introduciendo los valores numéricos

peso_kg <- as.numeric(readline("Ingrese su peso en kg:"))

estatura_m <- as.numeric(readline("Ingrese su estatura en m:"))

imc <- peso_kg/estatura_m^2
cat("Tu índice de masa corporal es de (imc): ", round(imc,2))



