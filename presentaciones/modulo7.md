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



