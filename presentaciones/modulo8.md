## 8. Análisis de una base de datos real (INEGI, BM, ONU, etc)

El Análisis Exploratorio de Datos o **EDA** se utiliza para representar un conjunto de datos y sus relaciones en forma visual y gráfica de tal forma que los datos cuenten alguna historia. El principio es que para nuestro cerebro es más fácil entender una imagen que una tabla con números.

En esta sección usaremos ggplot con el conjunto de datos del Inegi que ya hemos estado usando

**ggplot** funciona con “capas” que se van agregando de tal forma que cada una de ellas contiene algún elemento visual de la gráfica. Estas capas operan en jerarquías de importancia:

   - Primero tenemos los aesteticos o aes(). El más importate es el primer aestetico que se refiere a los datos que vamos a utilizar para graficar.

   - En segundo lugar, están los elementos geométricos o geom_xyz() que describen las geometrías que componen las gráficas.

   - En tercer lugar, están otros elementos como los temas, colores, titulos y leyendas

### Histogramas

El histograma visualiza la distribución de frecuencias de los datos. En ggplot existe la forma geométrica geom_histogram:

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

Para simplificar la gráfica, vamos a eliminar las leyendas, agregar un título y un subtitulo

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill = grupoSexo)) +
  geom_histogram(color = 'white') +
  facet_wrap(~grupoSexo, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  labs(title = 'Data Inegi',
       subtitle = 'Histogram by SEXO')
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

### Gráficas de densidad
Una gráfica de densidad es similar a un histograma solo que utiliza una estimación no paramétrica de la distribución de probabilidades de los datos. El objeto geométrico es *geom_density*

<pre><code>
ggplot(datosInegiConMunicipios, aes(x = EDAD)) +
  geom_density()
</code></pre>

Al igual que en el histograma también podemos agregar capas. Por ejemplo, vamos a graficar la distribución de frecuencias por *SEXO*

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill = grupoSexo)) +
  geom_density(alpha = 0.4)
</code></pre>

agregado una transparencia a través del parámetro *alpha = 0.4* para poder visualizar la distribución por SEXO. 

Si te parece que la imagen no es muy clara, podemos aplicar un facet_wrap
<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill = grupoSexo)) +
  geom_density(alpha = 0.4) +
  facet_wrap(~grupoSexo, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  labs(title = 'Inegi',
       subtitle = 'Density Plot by SEXO')
</code></pre>

### Gráficas de cajas (Box Plots)
La gráfica de cajas es otra forma de visualizar la distribución de los datos. 
La geometría que la define es *geom_boxplot()* y son muy buenas para visualizar la dispersión por grupos de datos.

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
  geom_boxplot()
</code></pre>

Las gráficas de caja o **box plots** nos permiten agregar una 3er variable para visualizar los datos. 
Supongamos que queremos ver las diferencias entre la escolaridad, el sexo y la edad Entonces, agregaremos un **facet** por la variable escolaridad.

<pre><code>
unique( datosInegiConMunicipiosOrdenado$ESCOLARI) 
colnames(datosInegiConMunicipiosOrdenado)
ggplot(datosInegiConMunicipiosOrdenado, aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
  geom_boxplot() +
  facet_wrap(~ESCOLARI, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  labs(title = 'Dataset Inegi',
       subtitle = 'Box Plot by sexo and by escolaridad')
</code></pre>

Una característica interesante de **ggplot** es que también podemos agregar elementos gráficos que se computan por medio de estadísticos. Supongamos que queremos agregar un punto en cada caja que represente el promedio por grupo. Esto se logra con el elemento **stat_summary()**

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
  geom_boxplot(alpha = 0.6) +
  facet_wrap(~ESCOLARI, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  stat_summary(fun=mean, geom = "point", shape = 16, size = 1, color="red", fill = "red") +
  labs(title = 'Dataset Inegi',
       subtitle = 'Box Plot by sexo and by escolaridad')
</code></pre>

### Gráficas de Violin (Violin plot)

Es una variante del gráfico de caja que muestra de una forma mas clara la distribución de los datos en cuanto al sesgo de la distribución de frecuencias.

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, 
       aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
       geom_violin()
</code></pre>


### Galería de gráficos en R
[https://www.r-graph-gallery.com/](https://www.r-graph-gallery.com/)
