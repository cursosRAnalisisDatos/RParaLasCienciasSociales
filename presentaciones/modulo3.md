## Módulo 3: Objetos de R (estructuras de datos)

Las colecciones de datos surgen de la necesidad de manipular datos agrupados con fines específicos.

Cuando se tiene una colección, las operaciones básicas que se requieren hacer son:

  - agregar un dato
  - eliminar un dato
  - buscar un dato
  - actualizar un dato
  - conocer la cantidad de datos almacenados
  
##
**R** tiene varias formas de representar a esas colecciones y van a depender de la manera interna de cómo se almacenan y de cómo se acceden a ellas.

Entre ellas encontramos:

 - vectores
 - matrices
 - arrays
 - listas
 - data frames
 
## Vectores
Un vector es una colección de uno o más datos del mismo tipo (es la estructura más sencilla que tiene **R**).

### Características:

- Homogéneo. Un vector tiene el mismo tipo que los datos que contiene.
El tipo del vector lo define su contenido (Si tenemos un vector que contiene datos de tipo numérico, el vector será también de tipo numérico)

- Tamaño. Es el número de elementos que contiene el vector (**length()**)

- Atributos. Los vectores tienen varios atributos que describen características de los datos que contienen.

## Ejemplos con vectores
En **R** los datos simples se definen como vectores, por ejemplo un entero *8* es un vector de longitud 1.

<pre><code>
8
## [1] 8
</code></pre>

### La función **is.vector()**
<pre><code>
is.vector(8)
[1] TRUE
</code></pre>

### La función **lenght()**
<pre><code>
lenght(8)
[1] TRUE
</code></pre>

## Ejemplos de vectores con cadenas y variables lógicas

<pre><code>
is.vector("ocho")
## [1] TRUE
length("ocho")
[1] 1

is.vector(TRUE)
## [1] TRUE
length(TRUE)
[1] 1
</code></pre>

## Creando vectores

Para crear un vector usamos la función *c()* (combinar), la cual recibe como argumento los elementos agregar, separados por comas.

<pre><code>
# Vector numérico
c(15, 4, 0, 5, 8, 13)
[1] 15  4  0  5  8 13

# Vector de cadenas
c("mujer", "hombre", "adolescente")
[1] "mujer"       "hombre"      "adolescente"

# Vector lógico
c(TRUE, TRUE, FALSE, FALSE, TRUE)
[1]  TRUE  TRUE FALSE FALSE  TRUE
</code></pre>

## Agregando elementos al vector
Si deseamos agregar un elemento a un vector, se logra combinando el vector original con los elementos nuevos y asignando el resultado al vector original.

<pre><code>
vector <- c(TRUE, FALSE, TRUE)
vector <- c(vector, FALSE)
vector
[1]  TRUE FALSE  TRUE FALSE
</code></pre>

## Uniendo dos vectores
Se pueden crear vectores uniendo vectores:

<pre><code>
mi_vector_1 <- c(20, 21, 22)
mi_vector_2 <- c(23, 24, 25)

mi_vector_3 <- c(mi_vector_1, mi_vector_2)
mi_vector_3

[1] 20 21 22 23 24 25
</code></pre>

## Combinando diferentes tipos de datos en un vector
Cuando se usan diferentes tipos de datos en un vector, **R** realiza *coerción de tipos*, al tipo de datos más flexible.

#vector numérico
<pre><code>
v <- c(11, 12, 13)
class(v)
[1] "numeric"
</code></pre>

Si agregamos un valor de cadena "hola"
<pre><code>
v_n <- c(v, "hola")
class(v_n)
[1] "character"
</code></pre>

*Ejercicio: Hacer lo equivalente con otros tipos de datos*
<pre><code>
mi_vector_mezcla <- c(FALSE, 2, "tercero", 4.00)
</code></pre>

## Creando vectores con secuencias numéricas **:**

- en ambos lados se escribe el inicio y el final de la secuencia,
- son consecutivas
- tienen cambios de uno en uno
- incluyen límites negativos
- cifras decimales

<pre><code>
1:10 #ascendente
10:1 #decreciente
-50:-10 #negativos
80.15:90 #cifras decimales
-3.75:3 #decimales al inicio
46:50.05 #decimales al final
</code></pre>

## Vectorización de funciones
Consiste en aplicar una función a cada elemento dentro de un vector

<pre><code>
#Sea
vector <- c(28, 0, 1, 2, 3, 6, 7, 9, 10, 19)

#vectorizacion aritmetica
vector + 2
vector * 2
vector %% 2

#vectorizacion con operaciones relacionales
vector < 10
vector > 10
vector == 10
</code></pre>

## Eliminando elementos del vector
<pre><code>
personaje <- c('Fernando', 'Alejandro', 'Moisés', 'Agustino', 'Ezequiel')
personaje[-c(2, 5)]
</code></pre>

## Posibles respuestas al calculo de la media aritmética

Usando la función *mean* podemos calcular la media aritmética de una colecci:

<pre><code>
x <- c(2, 4, 3, 6, 3, 7, 5, 8)
mean(x) # 4.75
# Equivalente a:
sum(x)/lenght(x) # 4.75
</code></pre>

## Estructuras de control.
<pre><code>

if(condición) {
  operaciones_si_la_condición_es_TRUE
} else {
  operaciones_si_la_condición_es_FALSE
}
</code></pre>

<pre><code>
for(elemento in objeto) {
  operacion_con_elemento
}
</code></pre>

## Matrices
Es un tipo especial de vector que tiene una dimensión más, logrando una forma rectangular y controlada por renglones y columnas.

Para crear matrices se usa la función *matrix()*

- Una forma es que reciba como argumento un vector
matrix(1:15) # genera una matriz de una columna

- Otra forma es que reciba tres parámetros
<pre><code>
# Tres renglones y cuatro columnas
matrix(1:15, nrow = 3, ncol = 5)
# Cuatro columnas y tres columnas
matrix(1:12, nrow = 4, ncol = 3)
# Dos renglones y seis columnas
matrix(1:12, nrow = 4, ncol = 3)
</code></pre>

## Funciones para unir vectores

    cbind() para unir vectores, usando cada uno como una columna.
    rbind() para unir vectores, usando cada uno como un renglón.

<pre><code>
vector_1 <- 1:4
vector_2 <- 5:8
vector_3 <- 9:12
vector_4 <- 13:16
matriz <- rbind(vector_1, vector_2, vector_3, vector_4)

</code></pre>












## Usando paquetes
  
Para usar un paquete se usa la función
<pre><code>
  library(elNombreDelPaquete)
</code></pre>
  
  Ejemplo:
  <pre><code>
  library(dplyr)
</code></pre>
  
  Nota: *dplyr* es un paquete que permite la manipulación de archivos de datos (de tipo columnas-renglones) para poder hacer filtros, o elegir algunas columnas, etc
[https://swcarpentry.github.io/r-novice-gapminder-es/13-dplyr/](https://swcarpentry.github.io/r-novice-gapminder-es/13-dplyr/).

## En dónde están los paquetes?
- Los paquetes pueden ser bajados desde muchos lados, pero de las más comunes es cran-project, (install.packages())
- BioConductor 
- git-hub (install_github())

## Instalando paquetes
<pre><code>
  install.packages(nombreDelPaquete)
</code></pre>
  
  Ejemplo:
  <pre><code>
  install.packages(dplyr)# Instalando la librería dplyr
</code></pre>

## Nota importante con respecto a paquetes

La importancia de instalar una sola vez un paquete.

Instalar un paquete significa que lo tenemos que "bajar" de algún lado(servidor) y colocarlo en un directorio adecuado (entre otras cosas) en nuestra computadora para que **R** lo pueda encontrar, leer y usar lo que se necesite.

Es importante que la instalación se realice una sola vez y se use todas las veces que se necesite.

## Citando paquetes

  Una forma de reconocer el trabajo de quien hizo una función o todo un paquete es citando correctamente a sus autores, para esto *R* cuenta con:
  <pre><code>
  citation()
</code></pre>
El cual muestra la manera de citar a *R* en sí.

Para citar a cualquier paquete
<pre><code>
  citation(package = "nombreDelPaquete")
</code></pre>
  
Ejemplo:
<pre><code>
  citation(package = "dplyr")
</code></pre>
