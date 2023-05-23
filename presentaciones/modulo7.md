### 7.1 Conociendo el tipo de datos que tenemos en nuestro dataframe
Conocer el tipo de datos de nuestro marco de datos (o la estructura de datos que estemos trabajando) es importante pues eso nos permitirá saber qué análisis se puede realizar sobre ella, pues están determinadas si el dato representa relaciones cualitativas o cuantitativas.

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

### Personalizando la gráfica
Con este paquete se puede personalizar a gran detalle cada una de las gráficas, en esta sección vamos a explorar algunas de las opciones disponibles.

#### Modificando los colores

##### Personalizando el color del borde

Si estableces **fill** dentro de **aes** pero no **colour** puedes cambiar el color del borde para todos los histogramas así como el ancho y tipo de línea con los argumentos de **geom_histogram**.

<pre><code>
ggplot(df, aes(x = datosInegiConMunicipiosOrdenado$EDAD, 
               fill = datosInegiConMunicipiosOrdenado$NOM_ENT)) + 
              geom_histogram(colour = "black",
                                lwd = 0.75,
                                linetype = 1,
                                position = "identity")
</code></pre>

##### Personalizando el color de fondo
Si estableces **colour** pero no **fill** puedes cambiar el color de fondo de todos los histogramas con el argumento **fill** de **geom_histogram**.

<pre><code>
ggplot(df, aes(x = datosInegiConMunicipiosOrdenado$EDAD, 
               colour = datosInegiConMunicipiosOrdenado$SEXO_CHAR)) + 
  geom_histogram(fill  = "white",
                 position = "identity")
</code></pre>
Nota: Asegurarse que el argumento activo de **aes** es **colour**

##### Personalizando el color del borde para cada grupo

El color de los bordes se puede personalizar para cada histograma con **scale_color_manual**. Si quieres usar una paleta predefinina puedes usar, por ejemplo, **scale_color_brewer**.

<pre><code>
 geom_histogram(fill  = "white",
                 position = "identity") +
  scale_color_manual(values = c("blue", "orange"))
</code></pre>

##### Personalizando el color de fondo para cada grupo
De manera similar a personalizar los colores de los bordes, los colores de fondo se pueden cambiar con **scale_fill_manual** o una función equivalente.
<pre><code>
ggplot(df, aes(x = datosInegiConMunicipiosOrdenado$EDAD, 
               fill = datosInegiConMunicipiosOrdenado$SEXO_CHAR)) +
geom_histogram(color = 1, alpha = 0.75,
                 position = "identity") +
 scale_fill_manual(values = c("#8795E8", "#FF6AD5"))
</code></pre>
Nota: Asegurarse que el campo activo para **aes** es **fill**

##### Colores predefinidos en R

Existen diferentes formas de especificar un color en R: 
- Usando números del 1 al 8, e.g. col = 1 
- Especificando el nombre del color, e.g. col = "blue" 
- El valor HEX del color, e.g. col = "#0000FF"
- El valor RGB, haciendo uso de la función rgb, e.g. col = rgb(0, 0, 1). Esta última función también te permitirá cambiar la transparencia del color en caso de ser necesario, con el argumento alpha, que toma valores desde 0 (completamente transparente) hasta 1.

https://r-charts.com/es/colores/

#### Modificando los parámetros a la función geom_histogram()

- alpha = [0,1]. La transparencia del color
- position = {"stack", "identity", "dodge"}. Posición de las barras
- binwidth. Ancho de las barras

NOTA: Probar una por una, para notar los cambios, para diferentes parámetros de cada argumento

<pre><code>
geom_histogram(alpha = 0.5, position = "identity")
#geom_histogram(alpha = 0.5, position="identity", binwidth = 1.5 ) #Ejemplo para probar
#geom_histogram(alpha = 0.5, position = "dodge") #Ejemplo para probar
</code></pre>

#### La leyenda de los valores categóricos (por grupos)
El título de la leyenda es el nombre de la columna de la variable categórica del conjunto de datos. Puedes cambiarlo con los argumentos **fill** y/o **colour** de la función **guides**. 
<pre><code>
df +guides(fill = guide_legend(title = "Por Municipio"),
         colour = guide_legend(title = "Por Municipio"))
</code></pre>

#### Posición de la leyenda
La posición por defecto de la leyenda es la derecha, pero puedes cambiarla con el argumento **legend.position** de la función **theme**. 
La modificación de estos componentes en la gráfica se puede realizar a mucho detalle, que vale la pena revisar el **help**.<br>

Los argumentos válidos son:
- "none" 
- "left" 
- "right" 
- "bottom" 
- "top"

Ejemplo:
<pre><code>
+ theme(legend.position = "left")
</code></pre>

