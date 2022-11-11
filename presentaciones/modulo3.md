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



## Matrices
Es un tipo especial de vector que tiene una dimensión más, logrando una forma rectangular y controlada por renglones y columnas.

