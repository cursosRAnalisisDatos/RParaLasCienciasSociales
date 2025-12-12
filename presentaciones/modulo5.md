
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

  [Una lista ya generada de todos los paquetes en R, version 4.6.0 ](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html)

  Para conocerlos todos, basta con usar:
  ```r
  library(help = "datasets")
  ```
  
 - archivos CSV en general, dentro de servidores públicos
 [https://www.inegi.org.mx/programas/ccpv/2020/?ps=microdatos](https://www.inegi.org.mx/programas/ccpv/2020/?ps=microdatos)
  
 - en el repositorio de R (**CRAN** - Comprehensive R Archive Network -)
 
  [*importinegi*](https://crenteriam.github.io/2019/08/04/importinegi/)
  
   ```r
    install.packages("importinegi")
   ```
  
 - **git-hub**
   ```r
   devtools::install_github("crenteriam/importinegi")
   ```
 
 - **Bioconductor**
 
  [http://bioconductor.org/packages/release/bioc/](http://bioconductor.org/packages/release/bioc/)
 

### 5.3 Leyendo archivos CSV

Por omisión utiliza **","** como separador de columnas y **"."** como separador de la parte decimal para números
  ```r
  setwd("/home/virgin/Desktop/cursoR")
  read.csv("data/censo.csv")
  misDatos <- read.csv("data/censo.csv")
  misDatos   
  ```

> [!NOTE]
> Ver, Módulo 2. Los directorios de trabajo

#### Hay ocasiones que los archivos se encuentran en servidores públicos
```r
datos <-read.csv("https://raw.githubusercontent.com/cursosRAnalisisDatos/RParaLasCienciasSociales/main/data/censo.csv", encoding="UTF-8")
View(datos)
```

#### Explorando los argumentos del método "read.csv"
```r
misDatos <- read.csv("data/censo.csv", header=FALSE)
misDatos <- read.csv("data/censoConHeader.csv", header=TRUE)
```

#### Codificación del CSV

- Si hay problemas en la codificación de los datos dentro del CSV, tal vez necesites especificar el argumento **encoding**. 
- Establecer la codificación en **UTF-8** tiende a resolver la mayoría de estos problemas.
```r
read.csv("mi_archivo.csv", encoding = "UTF-8")
```

#### El argumento na.strings
- Algunas veces los archivos contienen alguna cadena de caracteres que representan los valores faltantes u omitidos.
- Saber qué valores se ingresan depende de la fuente de datos.
- Si, por ejemplo, en nuestro archivo los valores **-9999** representan valor omitidos o faltantes podemos escribir:
```r
data <- read.csv("data/censoConCadenasRaras.csv", na.strings = "-9999", header=FALSE)
View(data)
read.csv("mi_archivo.csv", na.strings = c("-9999" , "Na" )) # o se le puede pasar un vector con todos los posibles valores a omitir.
```

#### Eliminando valores NA
Si necesitas eliminar los valores NA después de abrir el CSV, deberás usar la función que corresponda según tus datos. 
La función más habitual es **na.omit**
```r
na.omit(data)
```

### 5.4 Leyendo archivos Excel

Una de las formas más comunes de hacerlo es con la función **read.xlsx()**

Ejemplo:
```r
library(readxl)
censoTmp <- read_excel("data/censoTmp.xlsx")
View(censoTmp)
```
Otra manera es usando el propio IDE RStudio.
1. File->Import Dataset
2. From Excel 


### 5.5 Salidas de datos.

Hay muchos formatos de salidas de datos, en esta sección sólo mencionaremos dos:

#### Archivos CSV

Una de las formas más simples es usando la función **write.csv**

Ejemplo:
```r
write.csv(na.omit(data),"data/datosSinNA.csv")
```

#### RMarkdown

[https://rmarkdown.rstudio.com/](https://rmarkdown.rstudio.com/)

### 5.6 Usando paquetes

Para usar un paquete se usa la función
```r
  library(elNombreDelPaquete)
```
  
  Ejemplo:
  ```r
  library(dplyr)
```
  
> [!NOTE]
> *dplyr* es un paquete que permite la manipulación de archivos de datos (de tipo columnas-renglones) para poder hacer filtros,o elegir algunas columnas, etc. <br>
> [https://swcarpentry.github.io/r-novice-gapminder-es/13-dplyr.html](https://swcarpentry.github.io/r-novice-gapminder-es/13-dplyr.html).

#### En dónde están los paquetes?
- Los paquetes pueden ser bajados desde muchos lados, pero de las más comunes es cran-project, (install.packages())
- BioConductor 
- git-hub (install_github())

#### Instalando paquetes
```r
  install.packages(nombreDelPaquete)
```
  
  Ejemplo:
  ```r
  install.packages("dplyr")# Instalando la librería dplyr
  ```

#### Nota importante con respecto a paquetes

La importancia de instalar una sola vez un paquete.

Instalar un paquete significa que lo tenemos que "bajar" de algún lado(servidor) y colocarlo en un directorio adecuado (entre otras cosas) en nuestra computadora para que **R** lo pueda encontrar, leer y usar lo que se necesite.

Es importante que la instalación se realice una sola vez y se use todas las veces que se necesite.

#### Citando paquetes

  Una forma de reconocer el trabajo de quien hizo una función o todo un paquete es citando correctamente a sus autores, para esto *R* cuenta con:
  ```r
  citation()
```
El cual muestra la manera de citar a *R* en sí.

Para citar a cualquier paquete
```r
  citation(package = "nombreDelPaquete")
```
  
Ejemplo:
```r
  citation(package = "dplyr")
```

#### Usando el paquete **dplyr**

El paquete **dplyr** está construído con operaciones básicas de R, sin embargo provee métodos que hacen que usarlos se vuelva más intuitivo o que responda a sentencias de otros lenguajes de uso más general (como SQL).

Los métodos más comúnes que contiene son:
- filter
- select
- arrange #ordenar
 
#### El ejemplo
1. Primero haremos una selección del conjunto **iris**, quedando con sólo una selección de 15 registros. 
```r
lirios <- iris[c(1:5,51:55,101:105),]
lirios
```

2. Probando el método **filter**
Hace selecciones de registros usando ciertos valores
```r
#todos los lirios de la especie setosa
filter(lirios, Species=='setosa')

#los lirios de la especie setosa o virginica
filter(lirios, Species=='setosa' | Species=='virginica')

#los lirios de la especie setosa cuya longitud de sépalo es inferior a 5 mm.
filter(lirios, Species=='setosa', Sepal.Length < 5)
```

3. Probando el método **select()**
Elige un subconjunto de las variables (columnas) del dataframe.

```r
# selecciona solo algunas columnas-variables
select(lirios, Sepal.Length, Sepal.Width)

# Seleccionando un rango de variables con ":". Selecciona todas las variables entre la longitud del pétalo y la del sépalo
select(lirios, Petal.Length:Sepal.Length)

# Selecciona todas las variables menos la especie:
select(lirios, -Species)

# Seleccionar las variables cuyo nombre contenga ciertos términos:
select(lirios, contains('Petal'))
```

4. El método ordenar: arrange()
Ordena las filas de menor a mayor valor de la variable elegida.
```r
arrange(lirios, Sepal.Length)
```

Con un "-" ordena de mayor a menor
```r
arrange(lirios, -Sepal.Length)
```

Ordenamientos tomando en cuenta dos columnas o más
```r
arrange(lirios, Species, Sepal.Length)
```

5. **Sintáxis en cadena**

Primero se escribe el nombre del "dataframe" y luego las acciones en el orden en que se realizan separadas por el operador %>%(que podríamos leer como "luego"). <br>

Por ejemplo, si queremos:
- i) seleccionar las variables que contienen las medidas del pétalo, 
- ii) seleccionar los lirios para los que la longitud del pétalo es mayor que 4 mm 
- iii) y ordenarlos de menor a mayor longitud del pétalo, 

podemos escribir:

```r
lirios %>%
  select(contains('Petal'))  %>%
  filter(Petal.Length > 4)   %>%
  arrange(Petal.Length)
  
# arrange(filter(select(lirios, contains('Petal')), Petal.Length > 4), Petal.Length) # es equivalente
```

6. Añadir nuevas variables-columnas: mutate()

```r
lirios %>%
  mutate(forma = Petal.Width/Petal.Length)

#lirios <- lirios %>%
#mutate(forma = ifelse(Petal.Width/Petal.Length < 0.3, "condición-TRUE", "condición-FALSE"))
```

7. group_by() + summarise()

Se usa summarise() para aplicar funciones de agregación a columnas. Generalmente se usa en combinación con "group_by()" de manera que se calculen estadísticos para subgrupos de observaciones.<br>

Algunas de las funciones de agregación que se pueden emplear son:

    - n():     cantidad de elementos
    - sum():   suma
    - mean():  promedio
    - sd():    desvío estándar.

En el siguiente ejemplo se calcula la media de la longitud del pétalo para los lirios de cada una de las especies:
```r
lirios %>%
  group_by(Species) %>%
  summarise(mean(Petal.Length))
```
