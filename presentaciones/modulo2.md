---
title: "Introducción a R para las Ciencias Sociales"
author: 
- "Dr. Eric Hernández Ramírez"
- "Lic. en C. C. Virginia Teodosio Procopio"
- "Fís. Octavio Eduardo Vizcaya Xilotl"
date: "`r Sys.Date()`"
output: ioslides_presentation
logo: logoIIEc.jpg
---

## Módulo 2: Operaciones y funciones básicas con R


En R contamos con varias funciones de ayuda que nos permiten entrar a la documentación de las funciones, bases de datos y otros objetos ya sean parte de la instalación estándar como de los paquetes extras, entre ellas podemos enlistar las siguientes: 

### 2.1 Funciones de ayuda
<pre><code>
help() 
</code></pre>

R tiene documentación integrada en el entorno de desarrollo. Para obtener ayuda de una función puedes usar las funciones 
<pre><code>
help o ?
</code></pre>

Se usa como:
<pre><code>
?nombre_de_funcion, help(nombre_de_funcion)
</code></pre>

Ejemplo: usando la distribución normal

<pre><code>
  help(rnorm)
  ?rnorm
</code></pre>

Esto cargará una página de ayuda en RStudio (o como texto sin formato en R por sí mismo).

Cada página de ayuda se divide en secciones:

  - Descripción: una descripción extendida de lo que hace la función.
  - Uso: los argumentos de la función y sus valores predeterminados.
  - Argumentos: una explicación de los datos que espera cada argumento.
  - Detalles: cualquier detalle importante a tener en cuenta
  - Valor: los datos que regresa la función
  - Ver también: cualquier función relacionada que pueda serte útil.
  - Ejemplos: algunos ejemplos de cómo usar la función

#### Más ayuda
Favor de teclear
<pre><code>
 help.start()
</code></pre>

Despliega una versión de la documentación en línea de R, con ligas a las versiones de R instaladas localmente, manuales de R y una lista de los paquetes actualmente instalados.

### 2.2 Los directorios de trabajo
Un directorio de trabajo es el directorio desde el cual **R** va a leer los archivos (de datos, imágenes) o a guardar archivos (si el código lo dice).
<pre><code>
getwd() # para conocer el directorio de trabajo
setwd("C:\otro_directorio") #para modificar el directorio de trabajo

</code></pre>

Ejemplos (en ambos ejemplos se asume que existen dichos subdirectorios):
<pre><code>
#en Windows
setwd("C:\Users\Usuario\Desktop\cursoRParaLasCienciasSociales\sesion1")

#en Mac
setwd ("/Users/virg/Documents/Desarrollo/DarVi-Analytics/")

#en Ubuntu 
setwd("/home/virgin/Desktop/cursoR")
</code></pre>

### 2.3 Qué es un "script" (un archivo de código fuente)?

Un archivo de código fuente en R es un archivo que contiene instrucciones que sólo R sabe identificar, para luego interpretarlas y generar salidas en tiempo de ejecución.

Es importante escribir las instrucciones de nuestro algoritmo solución en un archivo que quede guardado en la computadora, de tal manera que pueda reusarse en el futuro con los mismos datos o con datos diferentes.
Y no volver a reconstruir todo cada vez que necesitemos hacer una análisis.

- Los scripts en *R* tienen terminación **.R**

### 2.4 Comentarios
**Los comentarios son líneas, inmersas en el código fuente, que son ignoradas por el *intérprete de R*, por lo que pueden contener cualquier información, en cualquier formato**

- La mayoría de veces las instrucciones que usamos, así como el uso de las funciones y los argumentos que necesitan, no son fáciles de recordar. 

- Insertar comentarios a nuestro código es importante porque nos ayudarán a la tarea de no volver a rehacer la solución cada vez. 

- Además que es uno de los mecanismos de comunicación con nosotros mismos (en el futuro) y con otros desarrolladores.

### 2.5 Operadores

#### Operaciones aritméticas
<pre><code>
15 + 3
[1] 45
</code></pre>

El **[1]** al inicio de la línea resultado nos dice el número de la observación en la que está clasificada la salida. Este número toma relevancia cuando el número de líneas de código incrementa.

<pre><code>
#Qué pasará con esta expresión aritmética?:
4 + "tres"
## Error in 4 + "tres": argumento no-numérico para operador binario
</code></pre>

#### Operadores aritméticos
<img src="../images/modulo2/operadoresAritmeticos.png" alt="proyecto R" width="650px"> 

La precedencia de operadores es la usual, de tal manera que la expresión:
**2 + 3 * 4**

- Se interpreta como: **2 + (3 * 4) = 14** 
- Y **NO** como **(2 + 3) * 4 = 20**
- Recomendación: usar siempre paréntesis bien anidados.

#### Precedencia de operadores
<img src="../images/modulo2/precedenciaOperadores.png" alt="proyecto R" width="650px"> 

#### La división entera (o módulo)
Es la división de un número entre otro, pero en lugar de devolver el cociente, nos devuelve el residuo.

Ejemplo:
<pre><code>
8 %% 4
## [1] 0
9 %% 2
## [1] 1
</code></pre>

#### Operadores relacionales
<img src="../images/modulo2/operadoresRelacionales.png" alt="proyecto R" width="700px"> 
  
Comparaciones entre cadenas. Lo hace por el orden alfabético
Ejemplo:
  <pre><code>
"cepillo" > "balón"
## [1] TRUE
</code></pre>

### 2.6 Funciones matemáticas
  Hay una gran cantidades de funciones matemáticas predefinidas, sólo hay que saber que argumentos necesitan para trabajar

<pre><code>
log(1)              # logarithm to base e
## [1] 0
log10(1)            # logarithm to base 10
## [1] 0
exp(1)              # natural antilog
## [1] 2.718282
sqrt(4)             # square root
## [1] 2
4^2                   # 4 to the power of 2
## [1] 16
pi                    # not a function but useful
## [1] 3.141593
</code></pre>

### 2.7 Funciones numéricas
<pre><code>
#abs(x): Valor absoluto de x, 
abs(-7) #devuelve 7

#ceiling(x): Devuelve el primer entero mayor a x, 
ceiling(5.3) #devuelve 6.

#floor(x): Devuelve el primer entero más pequeño de x, 
floor(5.99) #devuelve 5.

#trunc(x): Devuelve la parte entera de x eliminando los decimales de un número, 
trunc(5.99) #devuelve 5.

#Este operador módulo devuelve el resto de una división entera, 
10%%3 #devuelve 1.
</code></pre>

### 2.8 Funciones de Caracteres
#### substr()
##### usar el help()
Lo que hace la función substr(x) es devolver una subcadena de la cadena que le hemos pasado.<br>
    - x: Una cadena de caracteres.
    - start: Es el primer carácter que se devolverá (o sobrescribirá).
    - stop: El número del último carácter que se devolverá (o sobrescribirá).

<pre><code>
cadena = “OpenWebinars”
substr(cadena, start = 1, stop = 4)
#Se obtiene como resultado:
#[1] "Open" 
</code></pre>

#### toupper()
Esta función devuelve una cadena en mayúsculas.

<pre><code>
toupper(cadena)  
#[1] "OPENWEBINARS"
</code></pre>

#### tolower()
La función tolower() pasa una cadena a minúsculas, como se muestra a continuación:

<pre><code>
tolower(cadena)
[1] "openwebinars"
</code></pre>

### 2.9 Objetos en el ambiente de ejecución de R
  - Los *objetos* son espacios en la memoria que guardan información que puede accederse y guardarse de manera específica para luego hacer procedimientos estadísticos y gráficos, entre otros. 

- En R existen: variables, constantes, vectores, matrices, arreglos, dataframes(marco de datos), listas, etc.

#### Cómo crear un objeto
Necesitamos un nombre, un valor y el operador de asignación para asignarle el valor

Ejemplo:
<pre><code>
obj <- 48
</code></pre>
  
  • Cuando los objetos se crean, se guardan en la memoria asociada a R y se pueden monitorear desde el entorno gráfico de R.
<pre><code>
obj2 <- "R is cool"
obj2 <- R is cool #error
obj2 <- R is cool
Error: unexpected symbol in "my_obj2 <- R is"
</code></pre>
  
#### Más operaciones con objetos
Para reasignar el valor de algún objeto, simplemente se vuelve asociar un valor nuevo con el operador de asignación 
<pre><code>
  obj2 <- 2048
</code></pre>
  
-Hay que notar que en el ambiente de ejecución se actualiza también el tipo de objeto para "obj2"

-También se pueden hacer operaciones usando a los objetos almacenados previamente

<pre><code>
x <- obj1 + obj2 
x #error?
</code></pre>

#### Errores con objetos no definidos
<pre><code>
obj <- 98
obj4 <- my_obj + no_obj
Error: object 'no_obj' not found
</code></pre>
  
#### Objetos en tiempo de ejecución con funciones

- Para ver qué objetos se encuentran activos en la memoria se usa (ambas funciones son equivalentes):
<pre><code>
objects()
ls()
</code></pre>
  
#### Lista de los paquetes adjuntos y de algunos objetos (dataframes)
  <pre><code>
  search()
</code></pre>
  
- la salida muestra un vector que empieza con las variables de ambiente globales, e incluye a los paquetes base.

#### Borrando objetos de la memoria 
- Es necesario cuidar el espacio en memoria, sobre todo para proyectos grandes o manejo de datos masivos.
- Cuando un objeto ya no va a ocuparse en ejecución, lo mejor es borrarlo.
<pre><code>
  rm()
</code></pre>
  
  Se usa:
<pre><code>
  rm(nombreDelObjeto)
</code></pre>

#### La función **class()**
Le dice a una función genérica, como *print*, cómo debe manejar al objeto.

  - numérico
  - caracter
  - lógico
  - factor
  
#### Ejemplo de la función **class**
<pre><code>
x <- 3+5
class(x)
[1] "numeric"

y <- "hola"
class(y)
[1] "character"

z <- TRUE
class(z)
[1] "logical"
</code></pre>

#### Siguiendo nombrado adecuado de los objetos
Diferentes formas de nombrar a los objetos

<pre><code>
output_summary <- "my analysis"
output.summary <- "my analysis"
outputSummary  <- "my analysis"
</code></pre>

#### Funciones extras

##### cat
La función cat concatena e imprime objetos sin comillas. 
<pre><code>
cit <- "Ella dijo: \"Las comillas se pueden incluir en textos en R.\""
cit
cat(cit)
</code></pre>

#### readline
La función **readline** básica de R sirve para escribir un mensaje en la consola y solicitar al usuario una información que luego se puede utilizar para realizar alguna operación.
Se muestra un código de R que el lector puede copiar y pegar en un script. El código se debe ejecutar línea por línea y no en bloque.
<pre><code>
    #La primera línea solicita el nombre del usuario y lo almacena automáticamente en la variable my_name.  
    my_name <- readline(prompt="Ingrese su nombre: ")
    #La segunda línea solicita la edad y la almacena en la variable my_age
    my_age  <- readline(prompt="Ingrese su edad en años: ")
    #La tercera se asegura que la edad se convierta a un número entero.
    my_age  <- as.integer(my_age) # convert character into integer
    # La cuarta instrucción, escrita en varias líneas, saluda y entrega la edad del usuario en el próximo año.
    print(paste("Hola,", my_name, 
            "el año siguiente usted tendra", 
            my_age + 1, 
            "años de edad."))
</code></pre>

### 2.10 Documentando el script
<pre><code>
# Title: Time series analysis of snouters

# Purpose : This script performs a time series analyses on 
#           snouter count data.
#           Data consists of counts of snouter species 
#           collected from 18 islands in the Hy-yi-yi 
#           archipelago between 1950 and 1957. 
#           For details of snouter biology see:
#           https://en.wikipedia.org/wiki/Rhinogradentia

# Project number: #007

# DataFile:'data/snouter_pop.txt'

# Author: A. Nother
# Contact details: a.nother@uir.ac.uk

# Date script created: Mon Dec 2 16:06:44 2019 -----------
# Date script last modified: Thu Dec 12 16:07:12 2019 ----

# package dependencies

library(PopSnouter)
library(ggplot2)

print('put your lovely R code here')

# good practice to include session information

xfun::session_info()
</code></pre>
