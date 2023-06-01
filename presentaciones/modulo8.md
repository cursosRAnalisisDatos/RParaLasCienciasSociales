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

### Gráficos de dispersion o *geom_point*
Veamos cómo ha evolucionado la esperanza de vida en Europa

<pre><code>
if(!require(gapminder)) {
  install.packages("gapminder")
  library(gapminder)} 
df <- gapminder
head(df)
ncol(df)
nrow(df)
citation("gapminder")
</code></pre>

<pre><code>
aa <- filter(gapminder, continent == "Europe") 
p = ggplot(data = aa, aes(y = lifeExp, x = year )) +
  geom_point()
p
</code></pre>

#### Añadimos color
<pre><code>
p = ggplot(aa, aes(y = lifeExp, x = year , color=gdpPercap)) +
  geom_point()
p
</code></pre>

#### Suavizados (geom_smooth())
El **geom_smooth()** añade una aproximación de los datos **x** e **y**, e incluye una cinta con el margen de confianza.
<pre><code>
p +  geom_smooth() 
</code></pre>

#### Texto (geom_text())
Podemos añadir unas etiquetas a los puntos del gráfico de dispersión con el objeto **geom_text()**.
<pre><code>
p +  geom_smooth() + 
geom_text(aes(label=country))
</code></pre>

### Gráficos de lineas (geom_line())
Para hacer un gráfico de líneas usaremos una sintaxis muy parecida, pero tendremos que tener en cuenta que R va hacer una línea de punto a punto
<pre><code>
bb <- gapminder %>% filter(country == "Spain")
p = ggplot(data = bb, aes(y = lifeExp, x = year )) +
  geom_line()
p
</code></pre>

#### Haciendo agrupaciones por países
Si queremos graficar todos los valores del año, podemos darle un color para que nos separe por países por ejemplo:
<pre><code>
cc <- gapminder %>% filter(continent == "Oceania")
ggplot(data = cc, aes(y = lifeExp, x = year ,color=country)) +
  geom_line() +
  geom_point()
</code></pre>

#### Separando en diferentes figuras:
<pre><code>
ggplot(data = cc, aes(y = lifeExp, x = year )) +
  geom_line() + facet_wrap(~country)
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
ggplot(datosInegiConMunicipiosOrdenado, 
       aes(y = EDAD, x = SEXO, fill = factor(SEXO))) +
  geom_boxplot() +
  facet_wrap(~ESCOLARI, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  labs(title = 'Dataset Inegi',
       subtitle = 'Box Plot by sexo and by escolaridad')
</code></pre>

#### Más detalles a la gráfica

Una característica interesante de **ggplot** es que también podemos agregar elementos gráficos que se calculan por medio de estadísticos.<br> 
Supongamos que queremos agregar un punto en cada caja que represente el **promedio por grupo**. <br>
Esto se logra con el elemento **stat_summary()**<br>

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
  geom_boxplot(alpha = 0.6) +
  facet_wrap(~ESCOLARI, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  stat_summary(fun=mean, geom = "point", shape = 16, size = 1, color="red", fill = "red") +
  labs(title = 'Dataset Inegi',
       subtitle = 'Box Plot by sexo and by escolaridad')
</code></pre>

#### 
Otro ejemplo con gapminder
<pre><code>
ggplot(data = gapminder, aes(y = lifeExp, x = country )) +
</code></pre>
  geom_boxplot() 
</code></pre>

#### 
Con color y leyendas
<pre><code>
ggplot(gapminder, aes(y=lifeExp, x=country, fill=continent)) +
  geom_boxplot() +
  labs(x="País", y="Esperanza de vida", fill="Continente")   # título, ejes y leyenda
</code></pre>

### Gráficas de Violin (Violin plot)

Es una variante del gráfico de caja que muestra de una forma mas clara la distribución de los datos en cuanto al sesgo de la distribución de frecuencias.
<pre><code>

<pre><code>
ggplot(datosInegiConMunicipiosOrdenado, 
       aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
       geom_violin()
</code></pre>


### Galería de gráficos en R
[https://www.r-graph-gallery.com/](https://www.r-graph-gallery.com/)
