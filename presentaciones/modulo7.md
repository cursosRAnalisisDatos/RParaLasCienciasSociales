
El Análisis Exploratorio de Datos o EDA se utiliza para representar un conjunto de datos y sus relaciones en forma visual y gráfica de tal forma que los datos cuenten alguna historia. El principio es que para nuestro cerebro es más fácil entender una imagen que una tabla con números.

En esta sección usaremos ggplot con el conjunto de datos diamonds que es parte del ecosistema tidyverse

ggplot funciona con “capas” que se van agregando de tal forma que cada una de ellas contiene algún elemento visual de la gráfica. Estas capas operan en jerarquías de importancia:

   - Primero tenemos los aesteticos o aes(). El más importate es el primer aestetico que se refiere a los datos que vamos a utilizar para graficar.

   - En segundo lugar, están los elementos geométricos o geom_xyz() que describen las geometrías que componen las gráficas.

   - En tercer lugar, están otros elementos como los temas, colores, titulos y leyendas

https://www.r-graph-gallery.com/

### 7.1 Conociendo el tipo de datos que tenemos en nuestro dataframe
Conocer el tipo de datos de nuestro marco de datos (o la estructura de datos que estemos trabajando) es importante pues eso nos permitirá saber qué análisis
se puede realizar sobre ella, pues están determinadas si el dato representa relaciones cualitativas o cuantitativas.

Una manera de saberlo es con la función **class**, pero quisiéramos aplicarlo de manera automática a todas las columnas.

#### La función lapply
<pre><code>
Sintáxis: apply( x, funcion ) #aplicado de esta manera es para columnas
Regresa: una lista con el tipo de dato para cada columna
</code></pre>

Usaremos la función **lapply**.
<pre><code>
lapply(datosInegiConMunicipiosOrdenado, class)
</code></pre>

### 7.2 Obteniendo un resumen de los datos
Y por último, pedimos un resumen de nuestros datos con la función **summary()**. Esta función acepta cualquier tipo de objeto como argumento y nos devuelve un resumen descriptivo de los datos de cada uno de sus elementos.

<pre><code>
summary(datosInegiConMunicipiosOrdenado)
</code></pre>

<img src="../images/modulo6/salidaFuncionSummary.png" alt="proyecto R" width="800px"> 

La salida muestra:
- mínimos y máximos en busca de outliers, 
- si la media y mediana son similares la una a la otra.

También se puede realizar el resumen por columna
<pre><code>
summary(datosInegiConMunicipiosOrdenado$EDAD)
</code></pre>

### 7.3 Variables discretas en R

#### Frecuencias absolutas con la función **table**
Recibe un vector o una lista

Ejemplo:
<pre><code>
table(datosInegiConMunicipiosOrdenado$NOM_ENT)
</code></pre>

#### Frecuencias relativas (proporciones) con la función **prop.table()**
Ejemplo:
<pre><code>
prop.table(table(datosInegiConMunicipiosOrdenado$NOM_ENT))
</code></pre>

### 7.4 Histogramas

#### usando la función ggplot
1. Creamos la variable **pl** correspondiente a la sintaxis básica en el paquete **ggplot2** para la creación de una gráfica.

<pre><code>
library(ggplot2)
install.packages("ggplot2")
colnames(datosInegiConMunicipiosOrdenado)
head(datosInegiConMunicipiosOrdenado)
pl <- ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD))
class(pl)
</code></pre>

2. Añadimos el elemento geométrico, en esta caso, queremos un histograma.
<pre><code>
pl + geom_histogram()
</code></pre>

3. Mejoramos la visualización agregando más parámetros a la función *geom_histogram()*
<pre><code>
pl2 <- pl + geom_histogram(binwidth = 0.8, col='black', fill='green', alpha=0.4)
pl2
</code></pre>

4. Agregamos una capa más de etiquetas.
<pre><code>
pl2 + labs( title = "CENSO",
            x = "Columna Edad",
            y = "Conteos",
            subtitle = "Edad")
</code></pre>

### Histogramas por grupos
<pre><code>
set.seed(3)
x1 <- rnorm(500)
x2 <- rnorm(500, mean = 3)
x <- c(x1, x2)
grupo <- c(rep("G1", 500), rep("G2", 500))

df <- data.frame(x, group = grupo)
</code></pre>

<pre><code>
ggplot(df, aes(x = x, fill = grupo)) + 
  geom_histogram()
 </code></pre>
