
## Módulo 5. Manejo de Datos

La generación constante de información conlleva a adentrarse a diferentes formatos donde radican resultados de diferentes estudios, aplicaciones, investigaciones, 

### 5.1 Formatos de archivos

Entre ellos pueden ser:

- archivos CSV
- archivos Excel
- archivos de Stata
- archivos PDF
- XML y sus variantes
- etc

pero las necesidades de publicar resultados conllevan a también generar resultados en diferentes formatos

### 5.2 Lugares donde residen datos de lectura

  Las variantes son muy amplias, acá intentamos destacar las más comunes.
  
  - datos ya existentes en R, ejemplos: Iris, cars, mtcars, etc.

  [Una lista ya generada de todos los paquetes en R, versión 4.3 ](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html)

  Para conocerlos todos, basta con usar:
  <pre><code>
  library(help = "datasets")
  </code></pre>
  
 - archivos CSV en general, dentro de servidores públicos
 [https://www.inegi.org.mx/programas/ccpv/2020/?ps=microdatos](https://www.inegi.org.mx/programas/ccpv/2020/?ps=microdatos)
  
 - en el repositorio de R (**CRAN** - Comprehensive R Archive Network -)
 
  [*importinegi*](https://rde.inegi.org.mx/index.php/2020/12/02/importinegi-un-paquete-de-r-para-descargar-y-gestionar-bases-de-datos-del-inegi/)
  
   <pre><code>
    install.packages("importinegi")
   </code></pre>
  
 - **git-hub**
   <pre><code>
   devtools::install_github("crenteriam/importinegi")
   </code></pre>
 
 - **Bioconductor**
 
  [http://bioconductor.org/packages/release/bioc/](http://bioconductor.org/packages/release/bioc/)
 

### 5.3 Leyendo archivos CSV

Por omisión utiliza **","** como separador de columnas y **"."** como separador de la parte decimal para números
  <pre><code>
  setwd("/home/virgin/Desktop/cursoR")
  read.csv("data/censo.csv")
  misDatos <- read.csv("data/censo.csv")
  misDatos   
  </code></pre>

#### Hay ocasiones que los archivos se encuentran en servidores públicos
<pre><code>
datos <-read.csv("https://raw.githubusercontent.com/cursosRAnalisisDatos/RParaLasCienciasSociales/main/data/censo.csv", encoding="UTF-8")
View(datos)
</code></pre>

#### Explorando los argumentos del método "read.csv"
<pre><code>
misDatos <- read.csv("data/censo.csv", header=FALSE)
misDatos <- read.csv("data/censoConHeader.csv", header=TRUE)
</code></pre>

#### Codificación del CSV

- Si hay problemas en la codificación de los datos dentro del CSV, tal vez necesites especificar el argumento **encoding**. 
- Establecer la codificación en **UTF-8** tiende a resolver la mayoría de estos problemas.
<pre><code>
read.csv("mi_archivo.csv", encoding = "UTF-8")
</code></pre>

#### El argumento na.strings
- Algunas veces los archivos contienen alguna cadena de caracteres que representan los valores faltantes u omitidos.
- Saber qué valores se ingresan depende de la fuente de datos.
- Si, por ejemplo, en nuestro archivo los valores **-9999** representan valor omitidos o faltantes podemos escribir:
<pre><code>
data <- read.csv("data/censoConCadenasRaras.csv", na.strings = "-9999", header=FALSE)
View(data)
read.csv("mi_archivo.csv", na.strings = c("-9999" , "Na" )) # o se le puede pasar un vector con todos los posibles valores a omitir.
</code></pre>

#### Eliminando valores NA
Si necesitas eliminar los valores NA después de abrir el CSV, deberás usar la función que corresponda según tus datos. 
La función más habitual es **na.omit**
<pre><code>
na.omit(dataFrame)
</code></pre>

### 5.4 Leyendo archivos Excel

Una de las formas más comunes de hacerlo es con la función **read.xlsx()**

Ejemplo:
<pre><code>
telde = read.xlsx("endocrino.xlsx") 
</code></pre>

### 5.5 Salidas de datos.

Hay muchos formatos de salidas de datos, en esta sección sólo mencionaremos dos:

#### Archivos CSV

Una de las formas más simples es usando la función **write.csv**

Ejemplo:
<pre><code>
write.csv(datosInegiConMunicipios,"data/datosInegiConMunicipio.csv")
</code></pre>

#### RMarkdown

(https://rmarkdown.rstudio.com/)[https://rmarkdown.rstudio.com/]

### 5.6 Usando paquetes

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

#### En dónde están los paquetes?
- Los paquetes pueden ser bajados desde muchos lados, pero de las más comunes es cran-project, (install.packages())
- BioConductor 
- git-hub (install_github())

#### Instalando paquetes
<pre><code>
  install.packages(nombreDelPaquete)
</code></pre>
  
  Ejemplo:
  <pre><code>
  install.packages(dplyr)# Instalando la librería dplyr
</code></pre>

#### Nota importante con respecto a paquetes

La importancia de instalar una sola vez un paquete.

Instalar un paquete significa que lo tenemos que "bajar" de algún lado(servidor) y colocarlo en un directorio adecuado (entre otras cosas) en nuestra computadora para que **R** lo pueda encontrar, leer y usar lo que se necesite.

Es importante que la instalación se realice una sola vez y se use todas las veces que se necesite.

#### Citando paquetes

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
