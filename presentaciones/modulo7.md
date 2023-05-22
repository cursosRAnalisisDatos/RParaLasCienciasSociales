### 7.1 Conociendo el tipo de datos que tenemos en nuestro dataframe
Conocer el tipo de datos de nuestro marco de datos (o la estructura de datos que estemos trabajando) es importante pues eso nos permitirá saber qué análisis
se puede realizar sobre ella, pues están determinadas si el dato representa relaciones cualitativas o cuantitativas.

Una manera de saberlo es con la función **class**, pero quisiéramos aplicarlo de manera automática a todas las columnas.

#### La función lapply
<pre><code>
Sintáxis: apply( x, funcion ) #aplicado de esta manera es para columnas
Regresa: una lista con el tipo de dato para cada columna
</code></pre>
Ejemplo **lapply**.
<pre><code>
lapply(datosInegiConMunicipiosOrdenado, class)
</code></pre>

### 7.2 Obteniendo un resumen de los datos
Y por último, pedimos un resumen de nuestros datos con la función **summary()**. Esta función acepta cualquier tipo de objeto como argumento y nos devuelve un resumen descriptivo de los datos de cada uno de sus elementos.

<pre><code>
summary(datosInegiConMunicipiosOrdenado)
</code></pre>

<img src="../images/modulo7/salidaFuncionSummary.png" alt="proyecto R" width="800px"> 

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
install.packages("ggplot2")
library(ggplot2)
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
pl2 <- pl + geom_histogram(binwidth = 0.8, #ancho de la barra 
                                    col='black', #contorno de la barra
                                    fill='green', #relleno de cada barra
                                    alpha=0.4) #transparencia del color
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

Ejemplo simple:
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

Ejemplo con datos del INEGI
<pre><code>
df <- data.frame(datosInegiConMunicipiosOrdenado, 
                 group = datosInegiConMunicipiosOrdenado$NOM_ENT)
ggplot(df, aes(x = datosInegiConMunicipiosOrdenado$EDAD, 
               fill = datosInegiConMunicipiosOrdenado$NOM_ENT)) + 
  geom_histogram()
</code></pre>

Nota: Ejercicio 1. 

#### Modificando los parámetros a la función geom_histogram()

- alpha = [0,1]. La transparencia del color
- position = {"stack", "identity"}. Posición de las barras
- binwidth. Ancho de las barras

NOTA: Probar una por una, para notar los cambios, para diferentes parámetros de cada argumento

<pre><code>
geom_histogram(alpha = 0.5, position="identity", binwidth = 1.5 )
</code></pre>

#### La leyenda de los valores categóricos (por grupos)
El título de la leyenda es el nombre de la columna de la variable categórica del conjunto de datos. Puedes cambiarlo con los argumentos **fill** y/o **colour** de la función **guides**. 
<pre><code>
df +guides(fill = guide_legend(title = "Por Municipio"),
         colour = guide_legend(title = "Por Municipio"))
</code></pre>
