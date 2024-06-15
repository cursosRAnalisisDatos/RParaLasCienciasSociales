### Prerrequisitos: Tener cargado el dataframe: datosInegiConMunicipiosOrdenado
#

# -----------------------------------------------------------------------------------
# Ejercicio1: Tomando el ejemplo de Histogramas por Grupo, que agrupa por el Nombre de la 
# entidad ($NOM_ENT). Imítalo, y ahora agrupa por SEXO y vuelve a graficar

df <- data.frame(datosInegiConMunicipiosOrdenado, 
                 group = datosInegiConMunicipiosOrdenado$SEXO)
ggplot(df, aes(x = datosInegiConMunicipiosOrdenado$EDAD, 
               fill = datosInegiConMunicipiosOrdenado$SEXO)) + 
              geom_histogram()

# Cuál fué el resultado? hizo la agrupación que deseabas? por qué no?
# qué se tiene que cambiar?

# Lo que espera son valores de tipo cadena
class(datosInegiConMunicipiosOrdenado$NOM_ENT)

# y la columna SEXO es de tipo numerico
class(datosInegiConMunicipiosOrdenado$SEXO)

# Qué podemos hacer? Vamos a explorar los valores que tiene la columna SEXO
#1: 50
#3: 48
table(datosInegiConMunicipiosOrdenado$SEXO)

# Vamos a suponer que 1->"Hombre", 3->"Mujer"
# No vamos a eliminar la columna SEXO, lo que haremos es construir una nueva columna
# SEXO_CHAR que contenga: el valor "Hombre" por cada 1 y "Mujer" por cada 3.
# Cómo se hace eso?
# Recordando la sintáxis, if/else (del módulo 4)
resultado <- ifelse(c(3,4,5,6,7) < num_real, "condición-TRUE", "condición-FALSE")

# lo adaptamos a nuestras necesidades
resultado <- ifelse(datosInegiConMunicipiosOrdenado$SEXO == 1, "Hombre", "Mujer")

#corroboramos el resultado
table(resultado)

# lo agregamos como columna nueva a nuestro dataframe, usando la función "mutate"
# del módulo 5.
datosInegiConMunicipiosOrdenado <- datosInegiConMunicipiosOrdenado  %>%
  mutate(SEXO_CHAR = resultado)

# verificamos con un colnames() o un summary() o un table()
colnames(datosInegiConMunicipiosOrdenado)
summary(datosInegiConMunicipiosOrdenado)
table(datosInegiConMunicipiosOrdenado$SEXO_CHAR)

# ahora sí procedemos a preparar los datos para graficar
df <- data.frame(datosInegiConMunicipiosOrdenado, 
                 group = datosInegiConMunicipiosOrdenado$SEXO_CHAR)
ggplot(df, aes(x = datosInegiConMunicipiosOrdenado$EDAD, 
               fill = datosInegiConMunicipiosOrdenado$SEXO_CHAR)) + 
  geom_histogram()

############################################################################
### Ejercicio 2.
#Traducción del inglés-Tidyverse es una colección de paquetes de código abierto 
#para el lenguaje de programación R presentado por Hadley Wickham y su equipo que
#"comparten una filosofía de diseño, gramática y estructuras de datos subyacentes" 
#de datos ordenados.
#install.packages("tidyverse")
library(tidyverse)
#install.packages("ggplot2")
library(ggplot2)

# Ejemplo perfecto donde se lee el archivo desde un servidor
# Ver: 'http://verso.mat.uam.es/~joser.berrendero/datos/notas.txt'
#Son datos separados por coma, por eso se usa otra función, read.table()

#Utilizamos el fichero notas que contiene las notas medias en 1000 colegios de 
#una prueba de nivel que realizó la Comunidad de Madrid en 2009 y 2010, junto 
#con el tipo de colegio (concertado, privado o público). Lo primero, cargamos 
#ggplot2 y leemos los datos:
  
notas <- read.table('http://verso.mat.uam.es/~joser.berrendero/datos/notas.txt',
                    sep = ' ',
                    dec = ',',
                    header=TRUE)
head(notas)

#i) Crear un gráfico y añadir capas
#Para crear un gráfico se usa el comando ggplot:
ggplot(data = notas)

#De momento solo hemos asignado al gráfico el conjunto de datos que queremos 
#visualizar. No se representa gráficamente nada hasta que no se añaden más capas. 
#Importante: los datos a representar siempre tienen que formar parte de un data 
#frame.

#Las capas sirven para proporcionar información sobre cómo queremos visualizar 
#los datos. Esto se lleva a cabo a través de un geom. Este es un ejemplo sencillo 
#usando geom_point que es el geomcorrespondiente un diagrama de dispersión (cada 
#tipo de gráfico tiene el suyo). En primer lugar, mediante aes asignamos las 
#coordenadas x e y a los valores de las notas de 2009 y 2010 respectivamente.

ggplot(data = notas) +
  geom_point(aes(x = nota09, y = nota10))

#Si queremos añadir información sobre el tipo de colegio, lo podemos hacer 
#especificando que el color con el que se representa el punto dependa de la 
#variable "tipo":
ggplot(data = notas) +
  geom_point(aes(x = nota09, y = nota10, col = tipo))

#Vemos como el argumento aes (que corresponde a aesthetics) asigna variables a 
#ciertos aspectos del gráfico. Estos aspectos se pueden fijar en lugar de hacerlos 
#depender de una variable. En este caso el valor del argumento se asigna fuera de 
#la lista de aesthetics. En el siguiente ejemplo se ha fijado el color de los 
#puntos, su tamaño y el grado de transparencia (lo que es útil cuando hay muchos 
#                                               puntos):
ggplot(data = notas) +
  geom_point(aes(x = nota09, y = nota10),
             col = 'darkblue',    # color de los puntos
             size = 3,            # tamaño de los puntos
             alpha = 1/5)   

#En general, cada geom admitirá un conjunto determinado de aesthetics. En el caso 
#particular de geom_point, mediante aes podemos hacer depender de una variable 
#otros aspectos como la forma o el tamaño de los puntos:
ggplot(data = notas) +
  geom_point(aes(x = nota09, y = nota10, shape= tipo))   # una forma para cada 
                                                        # tipo de colegio

#
