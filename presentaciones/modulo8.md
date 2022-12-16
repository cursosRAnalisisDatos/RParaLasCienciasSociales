## 8. Análisis de una base de datos real (INEGI, BM, ONU, etc)

El Análisis Exploratorio de Datos o **EDA** se utiliza para representar un conjunto de datos y sus relaciones en forma visual y gráfica de tal forma que los datos cuenten alguna historia. El principio es que para nuestro cerebro es más fácil entender una imagen que una tabla con números.

En esta sección usaremos ggplot con el conjunto de datos del Inegi que ya hemos estado usando

**ggplot** funciona con “capas” que se van agregando de tal forma que cada una de ellas contiene algún elemento visual de la gráfica. Estas capas operan en jerarquías de importancia:

   - Primero tenemos los aesteticos o aes(). El más importate es el primer aestetico que se refiere a los datos que vamos a utilizar para graficar.

   - En segundo lugar, están los elementos geométricos o geom_xyz() que describen las geometrías que componen las gráficas.

   - En tercer lugar, están otros elementos como los temas, colores, titulos y leyendas

[https://www.r-graph-gallery.com/](https://www.r-graph-gallery.com/)

<pre><code>
unique(datosInegiConMunicipiosOrdenado$SEXO)
#if(datosInegiConMunicipiosOrdenado ==  )
class(datosInegiConMunicipiosOrdenado$SEXO)
datosInegiConMunicipiosOrdenado <- cbind(datosInegiConMunicipiosOrdenado, 
                                         grupoSexo = ifelse(datosInegiConMunicipiosOrdenado$SEXO <= 1, "HOMBRE", "MUJER"))
resultadoSexo <- ifelse(datosInegiConMunicipiosOrdenado$SEXO <= 1, "HOMBRE", "MUJER")

#En este histograma la variable para fill es la que se genera usando el ifelse 
#y agregando la columna al dataframe
ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill=grupoSexo)) + geom_histogram()
</code></pre>

Agregando más detalles al gráfico
- color: agrega el color a las divisiones de las barras
- alpha: agrega un nivel de transparencia, para poder ver los valores encimados
- position: la manera en la que se dibujan los datos que coinciden, {identity, stack, ...}
- theme_gray(): son los temas preinstalados que pueden tomar el gráfico, de fondo

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill=grupoSexo)) + 
  geom_histogram(color="#e9ecef", alpha=0.6, position = "identity") +
  scale_fill_manual(values=c("#69b3a2", "#404080")) + #cambiamos los colores de manera manual
  theme_gray() + 
  labs(fill="")
</code></pre>

#### Más de histogramas
 - [https://r-graph-gallery.com/histogram.html](https://r-graph-gallery.com/histogram.html)

 - histogramas con código
  [http://www.sthda.com/english/wiki/ggplot2-histogram-plot-quick-start-guide-r-software-and-data-visualization](http://www.sthda.com/english/wiki/ggplot2-histogram-plot-quick-start-guide-r-software-and-data-visualization)


###
También podemos hacer un histograma por la variable *SEXO*. Para lograr esto, podemos hacer uso de un **facet**. Los facets permiten hacer un corte en los datos para visualizarlos por grupos. Ejemplo: *facet_wrap()*

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill = SEXO, color = 'white')) +
  geom_histogram() +
  facet_wrap(~SEXO, scales = 'free', nrow = 2)
</code></pre>
