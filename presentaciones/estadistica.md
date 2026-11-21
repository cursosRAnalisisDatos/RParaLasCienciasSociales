# Módulo 6. Introducción a la estadística y probabilidad

## Introducción

La estadística es una disciplina que proporciona herramientas para
recopilar, organizar, analizar e interpretar datos. Su importancia
radica en que permite transformar grandes cantidades de información en
conocimiento útil para comprender fenómenos, identificar patrones y
tomar decisiones fundamentadas.

En las ciencias sociales, la estadística permite estudiar fenómenos como
la desigualdad económica, el desempleo, la educación, la migración, la
participación política y las condiciones de vida de la población.

R ofrece numerosas herramientas para realizar análisis estadísticos.
Además de permitir operaciones matemáticas, cuenta con funciones
especializadas para calcular medidas descriptivas, construir
distribuciones de frecuencias, realizar simulaciones y trabajar con
distribuciones de probabilidad.

En este módulo estudiaremos los fundamentos de la estadística
descriptiva y la probabilidad, así como su aplicación mediante el
lenguaje R.

## Objetivos de aprendizaje

Al finalizar este módulo, el estudiante será capaz de:

-   Comprender los conceptos fundamentales de la estadística y sus
    principales aplicaciones.
-   Diferenciar entre población, muestra, individuo y variable
    estadística.
-   Identificar y clasificar variables según su naturaleza y escala de
    medición.
-   Construir e interpretar distribuciones de frecuencias.
-   Calcular e interpretar medidas de tendencia central, dispersión y
    posición.
-   Comprender los principios básicos de la probabilidad.
-   Reconocer algunas distribuciones de probabilidad y sus aplicaciones.
-   Utilizar funciones de R para realizar cálculos estadísticos y
    simulaciones básicas.

------------------------------------------------------------------------

# 6.1. ¿Qué es la estadística?

## Concepto de estadística

La estadística es una disciplina que se ocupa de los métodos para
recopilar, organizar, resumir, analizar e interpretar datos con el
propósito de describir fenómenos y obtener información que permita tomar
decisiones.

Su importancia radica en que muchos fenómenos que estudiamos no pueden
comprenderse a partir de observaciones aisladas. Necesitamos recopilar
información de múltiples individuos, identificar regularidades y
analizar las diferencias existentes entre ellos.

Por ejemplo, si queremos conocer las condiciones educativas de una
población, podemos recopilar información sobre el nivel de escolaridad
de sus habitantes. Al organizar y analizar esos datos, podemos
identificar qué proporción tiene educación básica, media superior o
superior.

La estadística permite pasar de observaciones individuales a
descripciones y conclusiones sobre conjuntos de datos.

## Estadística descriptiva e inferencial

La estadística se divide tradicionalmente en dos grandes áreas:

### Estadística descriptiva

Se ocupa de organizar, resumir y presentar los datos de manera que sea
posible comprender sus características principales.

Entre sus herramientas se encuentran:

-   Tablas de frecuencias.
-   Gráficos estadísticos.
-   Medidas de tendencia central.
-   Medidas de dispersión.
-   Medidas de posición.

Por ejemplo, si recopilamos las edades de 100 estudiantes
universitarios, podemos calcular su edad promedio, identificar la edad
más frecuente y determinar qué tan diferentes son sus edades entre sí.

El resultado describe las características del conjunto de estudiantes
observado.

### Estadística inferencial

Se ocupa de utilizar información obtenida de una muestra para realizar
estimaciones, contrastar hipótesis o formular conclusiones sobre una
población.

Por ejemplo, si queremos conocer la opinión de todos los habitantes de
una ciudad sobre determinado servicio público, podríamos seleccionar una
muestra de personas, aplicarles una encuesta y utilizar los resultados
para estimar las opiniones de la población.

La inferencia estadística permite trabajar con poblaciones grandes sin
necesidad de observar a todos sus integrantes, aunque sus conclusiones
están sujetas a incertidumbre.

### Diferencias entre ambas

  | --- | --- | --- |
  | Estadística descriptiva | Estadística inferencial| 
  | --- | --- | --- |
  | Describe los datos observados | Busca obtener conclusiones sobre una población| 
  | Organiza y resume información | Utiliza muestras para realizar estimaciones| 
  | Calcula medias, medianas y desviaciones | Realiza estimaciones y pruebas de hipótesis| 
  | Se concentra en los datos disponibles | Considera la incertidumbre asociada al muestreo| 
  | --- | --- | --- |
  
## Aplicaciones de la estadística en las ciencias sociales

La estadística tiene aplicaciones en prácticamente todas las disciplinas
que estudian el comportamiento humano y la organización de las
sociedades.

Algunos ejemplos son:

-   **Sociología:** estudiar las características demográficas, la
    desigualdad y la movilidad social.
-   **Economía:** analizar ingresos, empleo, inflación y crecimiento
    económico.
-   **Ciencia política:** estudiar preferencias electorales,
    participación política y opinión pública.
-   **Educación:** analizar el rendimiento académico, la deserción
    escolar y los niveles de escolaridad.
-   **Psicología:** estudiar comportamientos, actitudes y resultados de
    instrumentos de evaluación.
-   **Antropología:** analizar características de poblaciones y patrones
    culturales.

## El papel de R en el análisis estadístico

R es un lenguaje de programación y un entorno de trabajo especializado
en el análisis estadístico y la representación de datos.

Entre sus principales características se encuentran:

-   Permite realizar operaciones estadísticas mediante funciones.
-   Facilita el procesamiento de grandes conjuntos de datos.
-   Cuenta con herramientas para realizar análisis estadísticos y
    matemáticos.
-   Permite automatizar procedimientos.
-   Facilita la reproducción de análisis.
-   Dispone de numerosos paquetes especializados.

Por ejemplo, podemos calcular la media de un conjunto de edades
utilizando:

``` r
edades <- c(19, 21, 20, 22, 24, 19, 23, 21)

mean(edades)
```

Resultado:

``` text
[1] 21.125
```

R calculó automáticamente el promedio de las ocho observaciones.

A lo largo de este módulo utilizaremos estas herramientas para
comprender cómo se aplican los conceptos estadísticos mediante
programación.

------------------------------------------------------------------------

# 6.2. Conceptos fundamentales de estadística

Antes de realizar cualquier análisis estadístico es necesario comprender
algunos conceptos que permiten identificar qué estamos estudiando y
sobre quiénes estamos recopilando información.

## Población

La población es el conjunto total de individuos, elementos u
observaciones que comparten una característica de interés para una
investigación.

Por ejemplo:

-   Todos los estudiantes inscritos en una universidad.
-   Todos los hogares de una ciudad.
-   Todas las empresas de un país.
-   Todos los habitantes de México.

La población no necesariamente está formada por personas. Puede incluir
organizaciones, instituciones, acontecimientos o cualquier otro conjunto
de elementos que se desee estudiar.

## Muestra

Una muestra es un subconjunto de elementos seleccionados de una
población para obtener información sobre ella.

Por ejemplo, si queremos estudiar las condiciones económicas de los
estudiantes de una universidad que tiene 20,000 alumnos, podríamos
seleccionar una muestra de 500 estudiantes y aplicarles una encuesta.

La muestra permite estudiar una parte de la población cuando resulta
difícil o costoso recopilar información de todos sus integrantes.

Es importante que el procedimiento de selección sea adecuado para los
objetivos de la investigación. Una muestra grande no garantiza por sí
misma que los resultados sean representativos.

## Individuo y unidad de observación

El individuo estadístico es cada uno de los elementos que integran una
población.

La unidad de observación es el elemento sobre el cual se recopila
información.

Por ejemplo, en una investigación sobre condiciones laborales:

-   Población: trabajadores de una ciudad.
-   Muestra: 500 trabajadores seleccionados.
-   Individuo: cada trabajador.
-   Unidad de observación: cada trabajador sobre el que se registra
    información.

En otras investigaciones, la unidad de observación puede ser una
familia, una empresa, una escuela o incluso un país.

## Parámetros y estadísticos

Aunque ambos conceptos se utilizan para describir características
numéricas, existe una diferencia importante.

Un **parámetro** es una medida numérica que describe una característica
de toda una población.

Un **estadístico** es una medida numérica calculada a partir de una
muestra.

Por ejemplo:

-   La edad promedio de todos los estudiantes de una universidad es un
    parámetro.
-   La edad promedio de 500 estudiantes seleccionados de esa universidad
    es un estadístico.

Los estadísticos pueden utilizarse para estimar parámetros
poblacionales.

## Variables estadísticas

Una variable estadística es una característica o propiedad de los
individuos de una población que puede tomar diferentes valores.

Por ejemplo, si estudiamos a un grupo de estudiantes, podemos registrar:

-   Edad.
-   Género.
-   Carrera.
-   Semestre.
-   Número de materias inscritas.
-   Promedio académico.

Cada una de estas características constituye una variable.

Las variables pueden clasificarse según la naturaleza de los valores que
representan.

## Variables cualitativas

Son aquellas cuyos valores representan categorías, atributos o
cualidades.

No expresan cantidades numéricas, aunque en ocasiones sus categorías
puedan codificarse mediante números.

Se clasifican en:

**Nominales:** sus categorías no tienen un orden natural.

Ejemplos:

-   Estado civil.
-   Nacionalidad.
-   Carrera universitaria.
-   Tipo de empleo.

**Ordinales:** sus categorías tienen un orden o jerarquía.

Ejemplos:

-   Nivel educativo.
-   Nivel socioeconómico.
-   Grado de satisfacción.
-   Nivel de acuerdo con una afirmación.

Por ejemplo, una variable de satisfacción podría tener las siguientes
categorías:

1.  Muy insatisfecho.
2.  Insatisfecho.
3.  Neutral.
4.  Satisfecho.
5.  Muy satisfecho.

Aunque las categorías se representen mediante números, estos indican un
orden, no necesariamente distancias equivalentes entre categorías.

## Variables cuantitativas

Son aquellas que representan cantidades numéricas y permiten realizar
operaciones aritméticas con significado.

Se clasifican en:

**Discretas:** toman valores separados, generalmente correspondientes a
conteos.

Ejemplos:

-   Número de hijos.
-   Número de estudiantes.
-   Cantidad de libros.
-   Número de empleos anteriores.

**Continuas:** pueden tomar cualquier valor dentro de un intervalo,
dependiendo de la precisión de la medición.

Ejemplos:

-   Estatura.
-   Peso.
-   Temperatura.
-   Tiempo.
-   Ingresos, cuando se consideran en una escala continua.

## Escalas de medición

Además de distinguir entre variables cualitativas y cuantitativas, es
importante identificar la escala de medición utilizada.

Existen cuatro escalas fundamentales:

  -----------------------------------------------------------------------
  Escala                  Características         Ejemplo
  ----------------------- ----------------------- -----------------------
  Nominal                 Categorías sin orden.   Nacionalidad.

  Ordinal                 Categorías ordenadas.   Nivel educativo.

  Intervalo               Diferencias numéricas   Temperatura en °C.
                          interpretables, sin     
                          cero absoluto.          

  Razón                   Diferencias y           Edad, peso e ingresos.
                          proporciones            
                          interpretables, con     
                          cero absoluto.          
  -----------------------------------------------------------------------

La escala de medición influye en las operaciones estadísticas que
podemos realizar y en la interpretación de sus resultados.

## Aplicación en R: identificación de variables

Podemos crear un pequeño conjunto de datos:

``` r
estudiantes <- data.frame(
  nombre = c("Ana", "Luis", "María", "Pedro"),
  edad = c(20, 22, 21, 24),
  carrera = c("Sociología", "Economía",
              "Psicología", "Sociología"),
  semestre = c(4, 6, 5, 8),
  promedio = c(8.5, 9.2, 8.8, 9.0)
)
```

Para conocer la estructura del conjunto de datos:

``` r
str(estudiantes)
```

La función `str()` permite observar las variables, sus tipos de
almacenamiento y algunos de sus valores.

Para consultar la clase de una variable:

``` r
class(estudiantes$edad)

class(estudiantes$carrera)
```

Resultado esperado:

``` text
[1] "numeric"

[1] "character"
```

También podemos convertir una variable en factor:

``` r
estudiantes$carrera <- factor(estudiantes$carrera)

class(estudiantes$carrera)
```

Resultado:

``` text
[1] "factor"
```

Es importante recordar que la naturaleza estadística de una variable y
su representación interna en R son cuestiones diferentes.

Por ejemplo, una variable cualitativa nominal puede almacenarse como
`character` o como `factor`, dependiendo de cómo se construya y utilice
el conjunto de datos.

------------------------------------------------------------------------

# 6.3. Distribuciones de frecuencias

Una vez que hemos recopilado información, necesitamos organizarla para
comprender cómo se distribuyen los valores de una variable.

Una distribución de frecuencias es una representación que muestra
cuántas veces aparece cada valor o categoría dentro de un conjunto de
datos.

## Frecuencia absoluta

La frecuencia absoluta indica el número de veces que aparece un
determinado valor o categoría.

Se representa generalmente mediante la letra:

\[ f_i \]

Por ejemplo, supongamos que preguntamos a diez estudiantes cuál es su
área de estudio preferida y obtenemos:

``` text
Sociología
Economía
Psicología
Sociología
Economía
Sociología
Psicología
Sociología
Economía
Sociología
```

La distribución de frecuencias absolutas sería:

  Área           Frecuencia absoluta
  ------------ ---------------------
  Sociología                       5
  Economía                         3
  Psicología                       2
  Total                           10

Podemos observar que Sociología es la categoría que aparece con mayor
frecuencia.

## Frecuencia relativa

La frecuencia relativa representa la proporción de observaciones
correspondiente a cada valor o categoría.

Se calcula dividiendo la frecuencia absoluta entre el número total de
observaciones.

\[ h_i = `\frac{f_i}{N}`{=tex} \]

Donde:

-   (h_i): frecuencia relativa.
-   (f_i): frecuencia absoluta.
-   (N): número total de observaciones.

Por ejemplo, para Sociología:

\[ h_i = `\frac{5}{10}`{=tex} = 0.5 \]

Esto significa que el 50 % de los estudiantes seleccionó Sociología.

## Frecuencia porcentual

La frecuencia porcentual expresa la frecuencia relativa en términos de
porcentaje.

\[ p_i = h_i `\times 100`{=tex} \]

Por ejemplo:

\[ 0.5 `\times 100`{=tex} = 50% \]

## Frecuencia acumulada

La frecuencia acumulada representa la suma progresiva de las frecuencias
absolutas hasta una categoría o valor determinado.

Se utiliza principalmente con variables cuantitativas y cualitativas
ordinales, porque requiere un orden significativo.

Por ejemplo:

  Nivel educativo     Frecuencia   Frecuencia acumulada
  ----------------- ------------ ----------------------
  Primaria                    10                     10
  Secundaria                  20                     30
  Bachillerato                35                     65
  Universidad                 25                     90
  Posgrado                    10                    100

La frecuencia acumulada permite responder preguntas como:

¿Cuántas personas tienen como máximo estudios de bachillerato?

La respuesta es 65.

## Aplicación en R: tablas de frecuencias

Podemos utilizar la función `table()` para contar las observaciones de
cada categoría.

``` r
areas <- c(
  "Sociología", "Economía", "Psicología",
  "Sociología", "Economía", "Sociología",
  "Psicología", "Sociología", "Economía",
  "Sociología"
)

frecuencias <- table(areas)

frecuencias
```

Resultado:

``` text
areas
   Economía   Psicología   Sociología
          3            2            5
```

Para obtener las frecuencias relativas:

``` r
prop.table(frecuencias)
```

Resultado:

``` text
areas
Economía Psicología Sociología
     0.3        0.2        0.5
```

Para expresarlas en porcentajes:

``` r
prop.table(frecuencias) * 100
```

Resultado:

``` text
areas
Economía Psicología Sociología
      30         20         50
```

Para calcular las frecuencias acumuladas:

``` r
frecuencias_acumuladas <- cumsum(frecuencias)

frecuencias_acumuladas
```

La función `cumsum()` realiza una suma acumulativa de los elementos de
un vector.

**Importante:** la acumulación solamente tiene una interpretación
estadística adecuada cuando las categorías tienen un orden
significativo.

## Construcción de una tabla de frecuencias

Podemos integrar los resultados en una sola tabla:

``` r
tabla <- data.frame(
  Frecuencia = as.vector(frecuencias),
  Frecuencia_relativa = as.vector(prop.table(frecuencias)),
  Porcentaje = as.vector(prop.table(frecuencias) * 100)
)

tabla
```

Esta tabla permite observar simultáneamente las frecuencias absolutas,
relativas y porcentuales.

------------------------------------------------------------------------

# 6.4. Medidas de tendencia central

Las medidas de tendencia central son indicadores estadísticos que
permiten identificar un valor representativo o central de un conjunto de
datos.

Las tres medidas más conocidas son la media, la mediana y la moda.

## Media aritmética

La media aritmética, también conocida como promedio, se obtiene sumando
todos los valores de un conjunto de datos y dividiendo el resultado
entre el número total de observaciones.

Se representa mediante:

\[ `\bar`{=tex}{x} = `\frac{\sum_{i=1}^{n}x_i}{n}`{=tex} \]

Donde:

-   (`\bar`{=tex}{x}): media aritmética.
-   (x_i): cada uno de los valores.
-   (n): número de observaciones.
-   (`\sum`{=tex}): símbolo de sumatoria.

**Ejemplo:**

Consideremos las edades de cinco estudiantes:

\[ 18, 20, 21, 22, 24 \]

La media es:

\[ `\bar`{=tex}{x} = `\frac{18+20+21+22+24}{5}`{=tex} \]

\[ `\bar`{=tex}{x} = `\frac{105}{5}`{=tex}=21 \]

La edad promedio es de 21 años.

### Cálculo en R

``` r
edades <- c(18, 20, 21, 22, 24)

mean(edades)
```

Resultado:

``` text
[1] 21
```

La función `mean()` calcula la media aritmética de un vector numérico.

## Mediana

La mediana es el valor que ocupa la posición central de un conjunto de
datos cuando estos se ordenan de menor a mayor.

Si el número de observaciones es impar, la mediana corresponde al valor
central.

Ejemplo:

\[ 12, 15, 18, 20, 25 \]

La mediana es 18.

Cuando el número de observaciones es par, la mediana se calcula como el
promedio de los dos valores centrales.

Ejemplo:

\[ 12, 15, 18, 20 \]

\[ Me = `\frac{15+18}{2}`{=tex}=16.5 \]

La mediana es 16.5.

### Cálculo en R

``` r
edades <- c(12, 15, 18, 20, 25)

median(edades)
```

Resultado:

``` text
[1] 18
```

La función `median()` calcula la mediana de un conjunto de datos
numéricos.

## Moda

La moda es el valor o categoría que aparece con mayor frecuencia dentro
de un conjunto de datos.

Por ejemplo:

\[ 2, 3, 3, 4, 4, 4, 5, 6 \]

La moda es 4, porque aparece tres veces.

Un conjunto de datos puede tener:

-   Una moda: unimodal.
-   Dos modas: bimodal.
-   Más de dos modas: multimodal.
-   Ninguna moda claramente definida: cuando todos los valores tienen la
    misma frecuencia.

A diferencia de la media y la mediana, R no cuenta con una función
básica llamada `mode()` que calcule la moda estadística. La función
`mode()` de R devuelve el tipo de almacenamiento de un objeto, no su
valor más frecuente.

Por ello, podemos identificar la moda utilizando `table()`.

### Cálculo en R

``` r
datos <- c(2, 3, 3, 4, 4, 4, 5, 6)

frecuencias <- table(datos)

frecuencias
```

Para identificar el valor con mayor frecuencia:

``` r
names(frecuencias)[which.max(frecuencias)]
```

Resultado:

``` text
[1] "4"
```

La función `which.max()` devuelve la posición del elemento que tiene el
valor máximo.

Si existen varias modas, podemos identificarlas de la siguiente manera:

``` r
names(frecuencias)[frecuencias == max(frecuencias)]
```

## Comparación de las medidas de tendencia central

Las tres medidas proporcionan información diferente.

  -----------------------------------------------------------------------
  Medida                  Característica          Sensibilidad a valores
                                                  extremos
  ----------------------- ----------------------- -----------------------
  Media                   Promedio de los         Alta.
                          valores.                

  Mediana                 Valor central de los    Baja.
                          datos ordenados.        

  Moda                    Valor o categoría más   No depende de la
                          frecuente.              magnitud de los
                                                  valores.
  -----------------------------------------------------------------------

Consideremos los siguientes ingresos mensuales:

``` r
ingresos <- c(8000, 8500, 9000, 9500, 10000, 50000)

mean(ingresos)
median(ingresos)
```

La media será considerablemente mayor que la mediana debido a que existe
un ingreso mucho más elevado que los demás.

Esto permite comprender por qué no siempre es adecuado utilizar la media
para representar un conjunto de datos.

En distribuciones asimétricas, la mediana puede proporcionar una
descripción más representativa del centro de los datos.

------------------------------------------------------------------------

# 6.5. Medidas de dispersión y posición

Las medidas de tendencia central permiten identificar valores
representativos, pero no describen completamente un conjunto de datos.

Dos grupos pueden tener el mismo promedio y, sin embargo, presentar
diferencias importantes en la distribución de sus valores.

Para comprender estas diferencias necesitamos estudiar las medidas de
dispersión.

## Concepto de dispersión

La dispersión indica qué tan separados o concentrados se encuentran los
valores de un conjunto de datos respecto a su centro.

Una dispersión pequeña indica que los valores tienden a estar próximos
entre sí.

Una dispersión grande indica que existe mayor variabilidad entre las
observaciones.

Por ejemplo, consideremos las calificaciones de dos grupos:

**Grupo A:**

\[ 8, 8, 9, 9, 10 \]

**Grupo B:**

\[ 5, 7, 9, 11, 12 \]

Ambos grupos tienen una media de 8.8, pero sus valores presentan
diferentes niveles de dispersión.

## Rango

El rango es la diferencia entre el valor máximo y el valor mínimo de un
conjunto de datos.

\[ R = X\_{`\max`{=tex}} - X\_{`\min`{=tex}} \]

Ejemplo:

\[ 5, 8, 10, 12, 15 \]

\[ R = 15-5=10 \]

El rango es 10.

### Cálculo en R

``` r
datos <- c(5, 8, 10, 12, 15)

range(datos)
```

Resultado:

``` text
[1]  5 15
```

La función `range()` devuelve los valores mínimo y máximo.

Para calcular el rango:

``` r
diff(range(datos))
```

Resultado:

``` text
[1] 10
```

La función `diff()` calcula las diferencias entre elementos
consecutivos. En este caso, al utilizar los valores mínimo y máximo,
obtenemos el rango.

## Varianza

La varianza es una medida que cuantifica la dispersión de los datos
respecto a su media.

Se calcula obteniendo las diferencias entre cada valor y la media,
elevándolas al cuadrado y calculando su promedio, con una corrección que
depende de si trabajamos con una población o una muestra.

### Varianza poblacional

Cuando disponemos de todos los elementos de una población, la varianza
se calcula mediante:

\[ `\sigma`{=tex}\^2 = `\frac{\sum_{i=1}^{N}(x_i-\mu)^2}{N}`{=tex} \]

Donde:

-   (`\sigma`{=tex}\^2): varianza poblacional.
-   (x_i): cada observación.
-   (`\mu`{=tex}): media poblacional.
-   (N): número de elementos de la población.

### Varianza muestral

Cuando trabajamos con una muestra, se utiliza:

\[ s\^2 = `\frac{\sum_{i=1}^{n}(x_i-\bar{x})^2}{n-1}`{=tex} \]

La división entre (n-1) corresponde a la corrección de Bessel y permite
obtener un estimador insesgado de la varianza poblacional bajo los
supuestos habituales de muestreo.

### Cálculo en R

``` r
datos <- c(5, 8, 10, 12, 15)

var(datos)
```

La función `var()` calcula la varianza muestral, utilizando (n-1) como
denominador.

Si queremos calcular la varianza poblacional para un conjunto que
representa a toda la población:

``` r
var(datos) * (length(datos) - 1) / length(datos)
```

Esto permite distinguir entre ambos procedimientos.

## Desviación estándar

La desviación estándar es la raíz cuadrada de la varianza.

\[ s = `\sqrt{s^2}`{=tex} \]

Su ventaja es que se expresa en las mismas unidades que los datos
originales.

Por ejemplo, si estamos estudiando edades, tanto las edades como su
desviación estándar se expresan en años.

### Cálculo en R

``` r
datos <- c(5, 8, 10, 12, 15)

sd(datos)
```

La función `sd()` calcula la desviación estándar muestral.

## Cuartiles

Los cuartiles son medidas de posición que dividen un conjunto de datos
ordenados en cuatro partes, cada una de las cuales contiene
aproximadamente el 25 % de las observaciones.

Se identifican mediante:

-   Primer cuartil (Q1): percentil 25.
-   Segundo cuartil (Q2): percentil 50, equivalente a la mediana.
-   Tercer cuartil (Q3): percentil 75.

Por ejemplo, si ordenamos los ingresos de una población, Q1 representa
el valor por debajo del cual se encuentra aproximadamente el 25 % de las
observaciones.

Los cuartiles permiten comprender cómo se distribuyen los datos y
comparar la posición relativa de las observaciones.

## Percentiles

Los percentiles dividen un conjunto de datos ordenados en cien partes.

Por ejemplo:

-   Percentil 10: valor por debajo del cual se encuentra aproximadamente
    el 10 % de las observaciones.
-   Percentil 25: primer cuartil.
-   Percentil 50: mediana.
-   Percentil 75: tercer cuartil.
-   Percentil 90: valor por debajo del cual se encuentra aproximadamente
    el 90 % de las observaciones.

Los percentiles son especialmente útiles en estudios educativos,
económicos y demográficos.

## Rango intercuartílico

El rango intercuartílico mide la dispersión del 50 % central de los
datos.

Se calcula mediante:

\[ RIC = Q3-Q1 \]

Donde:

-   Q1: primer cuartil.
-   Q3: tercer cuartil.

Esta medida tiene la ventaja de ser menos sensible a los valores
extremos que el rango o la desviación estándar.

### Cálculo en R

``` r
ingresos <- c(
  5000, 6000, 6500, 7000,
  7500, 8000, 8500, 9000,
  10000, 12000, 15000, 30000
)

quantile(ingresos)
```

La función `quantile()` calcula los cuantiles de un conjunto de datos.

Por defecto, R utiliza un procedimiento de interpolación para
calcularlos.

Para obtener los cuartiles:

``` r
quantile(ingresos,
         probs = c(0.25, 0.50, 0.75))
```

Para obtener el rango intercuartílico:

``` r
IQR(ingresos)
```

La función `IQR()` calcula la diferencia entre el tercer y el primer
cuartil.

## Resumen estadístico en R

Una función especialmente útil para obtener una descripción general de
los datos es `summary()`.

``` r
summary(ingresos)
```

Esta función proporciona:

-   Valor mínimo.
-   Primer cuartil.
-   Mediana.
-   Media.
-   Tercer cuartil.
-   Valor máximo.

Es una herramienta muy útil para realizar una primera exploración de una
variable cuantitativa.

## Comparación de conjuntos de datos

Consideremos dos grupos:

``` r
grupo_A <- c(8, 8, 9, 9, 10)

grupo_B <- c(5, 7, 9, 11, 12)
```

Calculamos sus medias:

``` r
mean(grupo_A)
mean(grupo_B)
```

Calculamos sus desviaciones estándar:

``` r
sd(grupo_A)
sd(grupo_B)
```

Aunque ambos grupos tienen la misma media, sus desviaciones estándar son
diferentes.

Esto demuestra que conocer únicamente el promedio no es suficiente para
comprender cómo se distribuyen los datos.

------------------------------------------------------------------------

# 6.6. Introducción a la probabilidad

La probabilidad es una rama de las matemáticas que estudia los fenómenos
aleatorios y permite cuantificar la posibilidad de que ocurra un
determinado evento.

A diferencia de la estadística descriptiva, que trabaja con datos
observados, la probabilidad permite estudiar situaciones en las que el
resultado no puede conocerse con certeza antes de realizar un
experimento.

## Experimentos aleatorios

Un experimento aleatorio es un procedimiento cuyo resultado no puede
predecirse con certeza, aunque se conozcan los posibles resultados.

Ejemplos:

-   Lanzar una moneda.
-   Lanzar un dado.
-   Seleccionar una persona al azar.
-   Observar si un estudiante aprueba o reprueba una asignatura.

Aunque no conocemos el resultado de un experimento particular, podemos
identificar los resultados posibles y estudiar sus probabilidades.

## Espacio muestral

El espacio muestral es el conjunto de todos los resultados posibles de
un experimento aleatorio.

Se representa generalmente mediante la letra:

\[ `\Omega`{=tex} \]

Por ejemplo, al lanzar un dado de seis caras:

\[ `\Omega `{=tex}= {1,2,3,4,5,6} \]

El espacio muestral contiene todos los resultados posibles.

## Eventos o sucesos

Un evento es un subconjunto del espacio muestral.

Por ejemplo, al lanzar un dado, podemos definir el evento A como obtener
un número par:

\[ A = {2,4,6} \]

El evento B puede representar obtener un número mayor que cuatro:

\[ B = {5,6} \]

Los eventos pueden clasificarse de diferentes maneras.

**Eventos simples:** contienen un solo resultado.

Ejemplo: obtener un 3 al lanzar un dado.

**Eventos compuestos:** contienen varios resultados.

Ejemplo: obtener un número par.

**Eventos mutuamente excluyentes:** no pueden ocurrir simultáneamente.

Ejemplo: obtener un número par y obtener un número impar en un mismo
lanzamiento de dado.

**Eventos independientes:** la ocurrencia de uno no modifica la
probabilidad de ocurrencia del otro.

Ejemplo: lanzar una moneda dos veces. El resultado del primer
lanzamiento no modifica la probabilidad del segundo.

## Probabilidad de un evento

La probabilidad representa una medida numérica de la posibilidad de que
ocurra un evento.

Sus valores se encuentran entre 0 y 1:

\[ 0 `\leq `{=tex}P(A) `\leq 1`{=tex} \]

Donde:

-   0 representa un evento imposible.
-   1 representa un evento seguro.
-   Los valores intermedios representan distintos grados de posibilidad.

Por ejemplo:

\[ P(A)=0.5 \]

Representa una probabilidad del 50 %.

## Probabilidad clásica

Cuando todos los resultados posibles son igualmente probables, podemos
calcular la probabilidad de un evento mediante:

\[
P(A)=`\frac{\text{Resultados favorables}}{\text{Resultados posibles}}`{=tex}
\]

Por ejemplo, al lanzar un dado justo, la probabilidad de obtener un
número par es:

\[ P(A)=`\frac{3}{6}`{=tex}=0.5 \]

Por lo tanto, existe una probabilidad del 50 % de obtener un número par.

## Probabilidad frecuencial o empírica

La probabilidad frecuencial se estima a partir de la proporción de veces
que ocurre un evento cuando repetimos un experimento.

Se expresa mediante:

\[
P(A)`\approx`{=tex}`\frac{\text{Número de veces que ocurre A}}{\text{Número total de experimentos}}`{=tex}
\]

Por ejemplo, si lanzamos una moneda 100 veces y obtenemos 53 caras, la
probabilidad empírica de obtener cara es:

\[ P(`\text{cara}`{=tex})=`\frac{53}{100}`{=tex}=0.53 \]

A diferencia de la probabilidad teórica, la probabilidad empírica puede
variar entre experimentos.

Sin embargo, al aumentar el número de repeticiones, la frecuencia
relativa tiende a aproximarse a la probabilidad teórica, bajo las
condiciones del experimento.

## Operaciones con eventos

Podemos realizar diferentes operaciones entre eventos para estudiar sus
relaciones.

### Unión

La unión de dos eventos representa la ocurrencia de al menos uno de
ellos.

Se representa mediante:

\[ A `\cup `{=tex}B \]

Su probabilidad se calcula mediante:

\[ P(A`\cup `{=tex}B)=P(A)+P(B)-P(A`\cap `{=tex}B) \]

### Intersección

La intersección representa la ocurrencia simultánea de dos eventos.

Se representa mediante:

\[ A`\cap `{=tex}B \]

Si dos eventos son independientes:

\[ P(A`\cap `{=tex}B)=P(A)`\cdot `{=tex}P(B) \]

### Complemento

El complemento de un evento representa que dicho evento no ocurre.

Se representa mediante:

\[ A\^c \]

Su probabilidad es:

\[ P(A\^c)=1-P(A) \]

## Simulación de experimentos aleatorios en R

R permite generar resultados aleatorios y realizar simulaciones.

Podemos utilizar la función `sample()` para seleccionar elementos de un
conjunto.

### Simulación del lanzamiento de un dado

``` r
dado <- c(1, 2, 3, 4, 5, 6)

sample(dado, size = 1)
```

Cada ejecución produce un resultado aleatorio entre 1 y 6.

Para realizar diez lanzamientos:

``` r
sample(dado, size = 10, replace = TRUE)
```

El argumento `replace = TRUE` permite que los resultados se repitan, lo
cual es necesario porque cada lanzamiento constituye un nuevo
experimento.

### Simulación de 1,000 lanzamientos

``` r
set.seed(123)

lanzamientos <- sample(
  dado,
  size = 1000,
  replace = TRUE
)

table(lanzamientos)
```

La función `set.seed()` establece una semilla para el generador de
números aleatorios.

Esto permite reproducir los resultados de una simulación cuando se
ejecuta nuevamente el código con la misma semilla.

### Estimación de la probabilidad de obtener un número par

``` r
numeros_pares <- lanzamientos %% 2 == 0

probabilidad <- mean(numeros_pares)

probabilidad
```

El operador `%%` obtiene el residuo de una división.

Por lo tanto, al dividir un número entre 2:

-   Si el residuo es 0, el número es par.
-   Si el residuo es 1, el número es impar.

Como los valores `TRUE` y `FALSE` pueden interpretarse numéricamente
como 1 y 0, respectivamente, `mean()` permite calcular la proporción de
resultados que cumplen la condición.

El resultado será una aproximación de la probabilidad teórica de obtener
un número par:

\[ P(A)=0.5 \]

------------------------------------------------------------------------

# 6.7. Variables aleatorias y distribuciones de probabilidad

Los experimentos aleatorios permiten obtener resultados que no conocemos
con certeza antes de realizarlos.

Una variable aleatoria permite representar numéricamente esos resultados
y estudiar cómo se distribuyen sus probabilidades.

## Variables aleatorias

Una variable aleatoria es una función que asigna un valor numérico a
cada resultado posible de un experimento aleatorio.

Por ejemplo, si lanzamos una moneda tres veces, podemos definir una
variable aleatoria X que represente el número de caras obtenidas.

Los valores posibles de X son:

\[ X={0,1,2,3} \]

La variable aleatoria permite estudiar la probabilidad de obtener cada
uno de esos valores.

### Variables aleatorias discretas

Son aquellas que pueden tomar valores separados y contables.

Ejemplos:

-   Número de hijos de una familia.
-   Cantidad de estudiantes que aprueban un examen.
-   Número de accidentes registrados en un día.
-   Número de llamadas recibidas por una institución.

### Variables aleatorias continuas

Son aquellas que pueden tomar cualquier valor dentro de un intervalo.

Ejemplos:

-   Estatura de una persona.
-   Tiempo de espera.
-   Peso corporal.
-   Temperatura.

La diferencia fundamental es que las variables discretas representan
resultados que pueden contarse, mientras que las continuas representan
magnitudes que pueden medirse.

## Distribuciones de probabilidad

Una distribución de probabilidad describe cómo se asignan las
probabilidades a los diferentes valores que puede tomar una variable
aleatoria.

Permite conocer qué resultados son más probables y cómo se comporta el
fenómeno aleatorio.

Existen diferentes distribuciones dependiendo de la naturaleza de la
variable y del fenómeno que se estudia.

A continuación, revisaremos dos distribuciones fundamentales.

## Distribución binomial

La distribución binomial es una distribución de probabilidad discreta
que permite modelar el número de éxitos obtenidos en una cantidad fija
de experimentos independientes.

Se utiliza cuando cada experimento tiene únicamente dos resultados
posibles:

-   Éxito.
-   Fracaso.

Por ejemplo:

-   Aprobar o reprobar un examen.
-   Responder correctamente o incorrectamente una pregunta.
-   Participar o no participar en una actividad.
-   Estar empleado o desempleado, bajo un modelo simplificado.

Para utilizar una distribución binomial deben cumplirse cuatro
condiciones:

1.  Existe un número fijo de experimentos.
2.  Cada experimento tiene dos resultados posibles.
3.  La probabilidad de éxito es constante.
4.  Los experimentos son independientes.

La distribución binomial se representa mediante:

\[ X`\sim `{=tex}Bin(n,p) \]

Donde:

-   (n): número de experimentos.
-   (p): probabilidad de éxito en cada experimento.
-   (X): número de éxitos obtenidos.

### Ejemplo

Supongamos que una encuesta tiene una probabilidad del 60 % de que una
persona responda afirmativamente a determinada pregunta.

Si entrevistamos a cinco personas, podemos estudiar la probabilidad de
obtener exactamente tres respuestas afirmativas.

Tenemos:

\[ n=5 \]

\[ p=0.6 \]

La distribución binomial permite calcular esa probabilidad.

### Funciones binomiales en R

R cuenta con cuatro funciones principales para trabajar con esta
distribución:

  -----------------------------------------------------------------------
  Función                             Descripción
  ----------------------------------- -----------------------------------
  `dbinom()`                          Calcula la probabilidad de obtener
                                      exactamente un número determinado
                                      de éxitos.

  `pbinom()`                          Calcula la probabilidad acumulada
                                      hasta un número determinado de
                                      éxitos.

  `qbinom()`                          Obtiene cuantiles de la
                                      distribución binomial.

  `rbinom()`                          Genera valores aleatorios siguiendo
                                      una distribución binomial.
  -----------------------------------------------------------------------

**Probabilidad de obtener exactamente tres éxitos:**

``` r
dbinom(3, size = 5, prob = 0.6)
```

**Probabilidad de obtener como máximo tres éxitos:**

``` r
pbinom(3, size = 5, prob = 0.6)
```

**Probabilidad de obtener más de tres éxitos:**

``` r
1 - pbinom(3, size = 5, prob = 0.6)
```

**Simulación de diez experimentos binomiales:**

``` r
rbinom(
  n = 10,
  size = 5,
  prob = 0.6
)
```

Cada valor representa el número de éxitos obtenido en cinco
experimentos.

## Distribución normal

La distribución normal es una distribución de probabilidad continua que
aparece frecuentemente en diferentes fenómenos naturales y sociales.

Se caracteriza por presentar una forma de campana, simétrica alrededor
de su media.

Entre sus características principales se encuentran:

-   Es simétrica respecto a su media.
-   La media, mediana y moda coinciden.
-   La mayor concentración de valores se encuentra alrededor de la
    media.
-   Los valores se vuelven menos frecuentes conforme se alejan del
    centro.
-   El área total bajo la curva es igual a 1.

La distribución normal se representa mediante:

\[ X`\sim `{=tex}N(`\mu`{=tex},`\sigma`{=tex}\^2) \]

Donde:

-   (`\mu`{=tex}): media de la distribución.
-   (`\sigma`{=tex}): desviación estándar.
-   (`\sigma`{=tex}\^2): varianza.

### Ejemplo

Supongamos que las calificaciones de un examen siguen aproximadamente
una distribución normal con:

\[ `\mu=80`{=tex} \]

\[ `\sigma=10`{=tex} \]

Esto significa que la calificación promedio es 80 y que la desviación
estándar es de 10 puntos.

La distribución normal permite calcular la probabilidad de obtener una
calificación dentro de determinados intervalos.

### Regla empírica

En una distribución normal se cumple aproximadamente que:

-   El 68 % de los valores se encuentra a una desviación estándar de la
    media.
-   El 95 % se encuentra a dos desviaciones estándar.
-   El 99.7 % se encuentra a tres desviaciones estándar.

Por ejemplo, si:

\[ `\mu=80`{=tex},`\quad `{=tex}`\sigma=10`{=tex} \]

Entonces:

  Intervalo     Porcentaje aproximado
  ----------- -----------------------
  70 a 90                        68 %
  60 a 100                       95 %
  50 a 110                     99.7 %

Esta regla permite comprender cómo se concentran los valores alrededor
de la media.

## Funciones para trabajar con la distribución normal en R

R cuenta con cuatro funciones principales:

  Función     Descripción
  ----------- ----------------------------------------------------
  `dnorm()`   Calcula la densidad de probabilidad en un punto.
  `pnorm()`   Calcula la probabilidad acumulada hasta un valor.
  `qnorm()`   Obtiene cuantiles de la distribución normal.
  `rnorm()`   Genera valores aleatorios con distribución normal.

**Probabilidad de obtener una calificación menor o igual a 90:**

``` r
pnorm(90, mean = 80, sd = 10)
```

**Probabilidad de obtener una calificación mayor a 90:**

``` r
1 - pnorm(90, mean = 80, sd = 10)
```

**Probabilidad de obtener una calificación entre 70 y 90:**

``` r
pnorm(90, mean = 80, sd = 10) -
  pnorm(70, mean = 80, sd = 10)
```

**Obtener el percentil 95 de la distribución:**

``` r
qnorm(0.95, mean = 80, sd = 10)
```

**Generar 100 observaciones con distribución normal:**

``` r
set.seed(123)

calificaciones <- rnorm(
  n = 100,
  mean = 80,
  sd = 10
)

head(calificaciones)
```

La función `head()` permite visualizar las primeras observaciones
generadas.

## Simulación y comparación de distribuciones

Podemos generar observaciones de una distribución normal y calcular sus
medidas descriptivas.

``` r
set.seed(123)

datos <- rnorm(
  n = 1000,
  mean = 50,
  sd = 10
)

mean(datos)

sd(datos)

summary(datos)
```

Los resultados serán aproximadamente:

-   Media: 50.
-   Desviación estándar: 10.

No necesariamente obtendremos los valores exactos porque estamos
trabajando con una muestra aleatoria.

Esto permite comprender la relación entre una distribución teórica y los
datos que podemos obtener mediante simulaciones.

------------------------------------------------------------------------

# 6.8. Actividad integradora

## Análisis estadístico de un conjunto de datos sociales

El propósito de esta actividad es integrar los conceptos estudiados
mediante el análisis de un conjunto de datos relacionado con algún
fenómeno social.

Podemos utilizar información sobre:

-   Características demográficas.
-   Condiciones educativas.
-   Ingresos y empleo.
-   Participación política.
-   Condiciones de vida.
-   Desigualdad social.

### Ejemplo de conjunto de datos

Crearemos una pequeña base de datos ficticia con información de diez
personas.

``` r
personas <- data.frame(
  edad = c(19, 22, 25, 21, 28,
           32, 24, 26, 35, 23),

  escolaridad = c(
    "Bachillerato", "Universidad",
    "Universidad", "Bachillerato",
    "Posgrado", "Universidad",
    "Universidad", "Bachillerato",
    "Posgrado", "Universidad"
  ),

  empleo = c(
    "No", "Si", "Si", "No", "Si",
    "Si", "No", "Si", "Si", "No"
  ),

  ingreso = c(
    5000, 12000, 15000, 6000, 25000,
    18000, 7000, 14000, 30000, 8000
  )
)
```

### 1. Exploración de los datos

``` r
str(personas)

summary(personas)
```

Identificar las variables y distinguir cuáles son cualitativas y cuáles
cuantitativas.

### 2. Distribuciones de frecuencias

Obtener la distribución de frecuencias de la escolaridad:

``` r
table(personas$escolaridad)
```

Calcular los porcentajes:

``` r
prop.table(table(personas$escolaridad)) * 100
```

### 3. Medidas de tendencia central

Calcular la edad promedio:

``` r
mean(personas$edad)
```

Obtener la mediana de los ingresos:

``` r
median(personas$ingreso)
```

Identificar la categoría de empleo más frecuente:

``` r
table(personas$empleo)
```

### 4. Medidas de dispersión

Calcular la desviación estándar de los ingresos:

``` r
sd(personas$ingreso)
```

Obtener los cuartiles:

``` r
quantile(personas$ingreso)
```

Calcular el rango intercuartílico:

``` r
IQR(personas$ingreso)
```

### 5. Interpretación

Responder las siguientes preguntas:

-   ¿Cuál es la edad promedio de las personas?
-   ¿Qué nivel de escolaridad aparece con mayor frecuencia?
-   ¿Qué proporción de las personas tiene empleo?
-   ¿Cuál es el ingreso mediano?
-   ¿Existe mucha variabilidad en los ingresos?
-   ¿Por qué podría ser más conveniente utilizar la mediana que la media
    para describir los ingresos?

### 6. Simulación de probabilidad

Supongamos que queremos estudiar un fenómeno hipotético en el que la
probabilidad de que una persona participe en determinada actividad es de
0.4.

Simularemos 100 observaciones:

``` r
set.seed(123)

participacion <- rbinom(
  n = 100,
  size = 1,
  prob = 0.4
)

table(participacion)

mean(participacion)
```

En este ejemplo:

-   0 representa que la persona no participa.
-   1 representa que la persona participa.

La media de la variable representa la proporción de participantes en la
simulación.

Comparar el resultado obtenido con la probabilidad teórica de 0.4.

------------------------------------------------------------------------

# Conclusiones

La estadística proporciona herramientas fundamentales para comprender y
analizar los fenómenos que ocurren en la sociedad.

A través de este módulo estudiamos cómo organizar información mediante
distribuciones de frecuencias, describir conjuntos de datos mediante
medidas de tendencia central y dispersión, y comprender los fundamentos
de la probabilidad.

También conocimos algunas distribuciones de probabilidad y aprendimos a
utilizar funciones de R para realizar cálculos y simulaciones.

Es importante recordar que las medidas estadísticas no deben
interpretarse de manera aislada. Su utilidad depende del contexto, de la
naturaleza de las variables y de las características del fenómeno que
estamos estudiando.

En el siguiente módulo utilizaremos estos conocimientos para representar
visualmente los datos mediante `ggplot2`, explorando cómo los gráficos
permiten identificar patrones, comparar distribuciones y comunicar
resultados estadísticos.

------------------------------------------------------------------------

## Referencias y recursos complementarios

-   [R: The R Project for Statistical
    Computing](https://www.r-project.org/)
-   [R Documentation: Statistical
    Functions](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/00Index.html)
-   [OpenIntro Statistics](https://www.openintro.org/book/os/)
-   [Introduction to Modern
    Statistics](https://openintro-ims.netlify.app/)
-   [R for Data Science](https://r4ds.hadley.nz/)
