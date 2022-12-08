## Módulo6. Introducción a la estadística y probabilidad con R

### Conociendo el tipo de datos que tenemos en nuestro dataframe
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
