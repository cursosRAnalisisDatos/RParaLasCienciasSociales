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

##
### Ejemplos con vectores
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

## 
### Ejemplos de vectores con cadenas y variables lógicas

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

##
### Creando vectores

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

##
### Agregando elementos al vector
Si deseamos agregar un elemento a un vector, se logra combinando el vector original con los elementos nuevos y asignando el resultado al vector original.

<pre><code>
vector <- c(TRUE, FALSE, TRUE)
vector <- c(vector, FALSE)
vector
[1]  TRUE FALSE  TRUE FALSE
</code></pre>

## 
### Uniendo dos vectores
Se pueden crear vectores uniendo vectores:

<pre><code>
mi_vector_1 <- c(20, 21, 22)
mi_vector_2 <- c(23, 24, 25)

mi_vector_3 <- c(mi_vector_1, mi_vector_2)
mi_vector_3

[1] 20 21 22 23 24 25
</code></pre>

## 
### Combinando diferentes tipos de datos en un vector
Cuando se usan diferentes tipos de datos en un vector, **R** realiza *coerción de tipos*, al tipo de datos más flexible.

<pre><code>
#vector numérico
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

## 
### Creando vectores con secuencias numéricas **:**

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

## 
### Vectorización de funciones
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

##
### Eliminando elementos del vector
<pre><code>
personaje <- c('Fernando', 'Alejandro', 'Moisés', 'Agustino', 'Ezequiel')
personaje[-c(2, 5)]
</code></pre>

### Posibles respuestas al calculo de la media aritmética

Usando la función *mean* podemos calcular la media aritmética de las calificaciones del estudiante:

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
<pre><code>
matrix(1:15) # genera una matriz de una columna
</code></pre>

##
- Otra forma es que reciba tres parámetros:
<pre><code>
# Tres renglones y cuatro columnas
matrix(1:15, nrow = 3, ncol = 4)
# Cuatro renglones y tres columnas
matrix(1:12, nrow = 4, ncol = 3)
</code></pre>

## 
### Funciones para unir vectores en la matriz, por columnas y por renglón

    cbind() para unir vectores, usando cada uno como una columna.
    rbind() para unir vectores, usando cada uno como un renglón.

<pre><code>
vector_1 <- 1:4
vector_2 <- 5:8
vector_3 <- 9:12
vector_4 <- 13:16
matriz <- rbind(vector_1, vector_2, vector_3, vector_4)
</code></pre>

## 
### Acceder a un elemento de la matriz: matriz[ren, col]
<pre><code>
x <- matriz[1, 2]
x
</code></pre>

### Obtener todo el renglón
<pre><code>
ren <- matriz[noRen,]
</code></pre>

### Obtener todo la columna
<pre><code>
col <- matriz[,noCol]
</code></pre>

##
### Para saber el tamaño de la matrix, se usa **dim**
<pre><code>
dim(matriz)
</code></pre>

### Funciones algebraicas con matrices
<pre><code>
diag( matriz ) # la diagonal de una matriz
t( matriz ) # la transpuesta de una matriz
det( matriz) # el determinante de un matriz, marca error si no es cuadrada
solve( matriz ) # la inversa de la matriz
eigen( matriz ) # los eigen valores y los eigen vectores de una matriz
A %*% B #la multiplicacion de matrices, sólo se pone el signo de %
</code></pre>

## Listas
- Una lista es un objeto que contiene una colección ordenada de objetos.
- Los componentes no necesitan ser del mismo tipo

Ejemplo:
<pre><code>
lst <- list(name="Alex", wife="Mary", noChildren=3, childAges=c(4,7,9) )
</code></pre>

## Características de las listas
- Como los componentes están enumerados, entonces se pueden acceder por su posición
<pre><code>
lst[[indice]] con indice={1,2,3,4}
</code></pre>

- Note que lst[[4]] es un **vector**, por lo que para acceder a sus componentes se usa:
<pre><code>
lst[[4]][1]
</code></pre>

- Si lst es una lista, entonces tiene el atributo **length**
<pre><code>
class(lst)
length(lst)
</code></pre>

##
- Los componentes de la lista también pueden ser nombrados y entonces el elemento se puede acceder
con el nombre en lugar de usar el número, la expresión es de la forma:
<pre><code>
nombreDeLaLista$nombreDelComponente
</code></pre>

Ejemplo:
<pre><code>
lst$name es lo mismo que lst[[1]] y es la cadena "Alex",
lst$wife es lo mismo que lst[[2]] y es la cadena "Mary",
lst$childAges[1] es lo mismo que lst[[4]][1] y es el número 4.
</code></pre>

##
### Concatenando listas
Se usa la función **c()** y si los argumentos son listas, el resultado es un objeto lista.
<pre><code>
list.ABC <- c(list.A, list.B, list.C)
</code></pre>



## Data frames (marco de datos)

- Un data frame es mas general que una matriz, esta estructura permite que diferentes 
columnas contengan distintos tipos de datos: numérico, caaracter, lógicos y otros.
- Un data frame es una estructura rectangular, en el sentido de que las columnas deben ser de
la misma longitud.
- Las columnas representan variables y los renglones son observaciones.
- Otra característica es que las **columnas** deben tener nombres y ser del mismo tipo
- Un data frame como se aclara más adelante puede pensarse como una "lista", donde los elementos
son vectores (o factores) correspondientes a las columnas.

##
Ejemplo: 

El conjunto Iris que viene preinstalado en todos los paquetes de R.

<img src="../images/modulo3/iris.png" alt="proyecto R" width="800px"> 

##
### Funciones para mostrar primeros y últimos registros del dataframe

Ejemplo:
<pre><code>
iris
head(iris)
help(head)
head(iris, n=10)
tail(iris)
</code></pre>

##
### Más características del dataframe
- La estructura de un dataframe es muy similar a la de una matriz. La diferencia es que sus filas pueden contener valores de diferentes tipos de datos.

- Los dataframe también tienen similitud con las listas, puesto que son básicamente colecciones de elementos. Sin embargo, el dataframe es una lista que únicamente contiene vectores de la misma longitud.

- Cada columna es considerada un vector

##
### Creando dataframes
Creamos vectores con los valores
<pre><code>
nombre <- c("Juan", "Margarita", "Ruben", "Daniel")
apellido <- c("Sanchez", "Garcia", "Sancho", "Alfara")
fecha_nacimiento <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
nro_hijos <- c(1, 2, 3, 4)

# Creamos un dataframe usando la función **data.frame()**
censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
censo
</code></pre>

## 
### Los atributos del marco de datos
- Con **dim** conocemos la dimensión del marco de datos 
<pre><code>
dim (censo)
</code></pre>

- El número de filas 
<pre><code>
dim(censo)[1]
nrow(censo)
</code></pre>

- El número de columnas
<pre><code>
dim(censo)[2]
ncol(censo) #<---
length(censo)
</code></pre>

##
### Los nombres en el marco de datos
Cuentan con un atributo llamado **names**, los nombres de las columnas
<pre><code>
names(censo)
</code></pre>

### Para cambiar los nombres, podemos hacer uso de la función names():
<pre><code>
# Asignamos diferentes nombres a las columas de `censo`
names(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", "Sexo", "Numero_Hijos")
names(censo)
</code></pre>

##
### Las funciones rownames() y colnames()
Para cambiar los nombres de las filas y columnas
<pre><code>
colnames(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", "Sexo", "Numero_Hijos")
rownames(censo) <- c("ID1", "ID2", "ID3", "ID4")
censo
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
