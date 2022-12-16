## 8. Análisis de una base de datos real (INEGI, BM, ONU, etc)

El Análisis Exploratorio de Datos o **EDA** se utiliza para representar un conjunto de datos y sus relaciones en forma visual y gráfica de tal forma que los datos cuenten alguna historia. El principio es que para nuestro cerebro es más fácil entender una imagen que una tabla con números.

En esta sección usaremos ggplot con el conjunto de datos del Inegi que ya hemos estado usando

**ggplot** funciona con “capas” que se van agregando de tal forma que cada una de ellas contiene algún elemento visual de la gráfica. Estas capas operan en jerarquías de importancia:

   - Primero tenemos los aesteticos o aes(). El más importate es el primer aestetico que se refiere a los datos que vamos a utilizar para graficar.

   - En segundo lugar, están los elementos geométricos o geom_xyz() que describen las geometrías que componen las gráficas.

   - En tercer lugar, están otros elementos como los temas, colores, titulos y leyendas

[https://www.r-graph-gallery.com/](https://www.r-graph-gallery.com/)

###
También podemos hacer un histograma por la variable *SEXO*. Para lograr esto, podemos hacer uso de un **facet**. Los facets permiten hacer un corte en los datos para visualizarlos por grupos. Ejemplo: *facet_wrap()*

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill = SEXO, color = 'white')) +
  geom_histogram() +
  facet_wrap(~SEXO, scales = 'free', nrow = 2)
</code></pre>
