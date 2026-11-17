### Especificación de las actividades del módulo 3

#### Actividad 1. Correspondiente a temas de: vectores, listas y matrices.

Dado el grupo de pacientes:

Juan Pérez, de 25 años, en observación, paciente con diabetes Tipo1, pronóstico: Pobre.<br>
Leticia Ramírez, en cuidado, de 34 años, con diabetes Tipo2, pronóstico: Mejora.<br>
Rosa Flores: de 38 años, con diabetes Tipo1, pronóstico: Excelente. residente de la CDM.<br> 
Josue Navarrete  pronóstico: mejora; de 52 años, de Veracruz, paciente con diabetes Tipo2.<br>
Felipe García; con diabetes Tipo1, pronóstico: Pobre. de Cuernavaca, Morelos.<br>

1. Construir el objeto que consideres más adecuado que contenga estos datos
2. Construye la matriz que guarde la información anterior.
3. ¿Qué preguntas consideras que sería relevante plantear?

Nota: los nombres son ficticios.

Actividad 1. Vectores, listas y matrices
1. Construir el objeto que consideres más adecuado para almacenar los datos
Análisis del problema
Tenemos información de cinco pacientes. Cada paciente representa un registro y cada característica (nombre, edad, estado, diabetes, pronóstico y residencia) representa una variable.

Una primera aproximación consiste en pensar en una estructura de filas y columnas, similar a una hoja de cálculo de Excel.

Por tanto, podemos considerar que una matriz es una estructura adecuada para organizar inicialmente la información.

```R
# Crear una matriz con la información de los pacientes

pacientes <- matrix(
  c(
    "Juan Pérez", "25", "En observación", "Tipo1", "Pobre", NA,
    "Leticia Ramírez", "34", "En cuidado", "Tipo2", "Mejora", NA,
    "Rosa Flores", "38", NA, "Tipo1", "Excelente", "CDM",
    "Josue Navarrete", "52", NA, "Tipo2", "Mejora", "Veracruz",
    "Felipe García", NA, NA, "Tipo1", "Pobre", "Cuernavaca, Morelos"
  ),
  nrow = 5,
  ncol = 6,
  byrow = TRUE
)
# Asignar nombres a las columnas
colnames(pacientes) <- c(
  "Nombre",
  "Edad",
  "Estado",
  "Diabetes",
  "Pronostico",
  "Residencia"
)

# Mostrar la matriz
print(pacientes)
```

Observación: En este primer acercamiento, las edades se escriben entre comillas porque la matriz contendrá cadenas de caracteres. Los datos faltantes se representan mediante NA.

2. Construir la matriz que guarde la información anterior
En realidad, ya hemos construido la matriz en el apartado anterior. Podemos realizar algunas operaciones para consultar su contenido.
```R
# Consultar las dimensiones de la matriz
dim(pacientes)

# Consultar el número de filas
nrow(pacientes)

# Consultar el número de columnas
ncol(pacientes)

# Consultar los nombres de los pacientes
pacientes[, "Nombre"]

# Consultar los pronósticos
pacientes[, "Pronostico"]

# Consultar toda la información de Juan Pérez
pacientes[1, ]
```
2.1. ¿Qué sucede si queremos calcular la edad promedio?
Intentemos calcular el promedio de edad de los pacientes.
```R
# Intentar calcular el promedio de las edades
mean(pacientes[, "Edad"])
```

¿Qué sucede?

R nos devolverá un error o un resultado no válido, dependiendo de cómo se procese la conversión, porque las edades están almacenadas como cadenas de caracteres.

Podríamos intentar solucionar el problema convirtiendo las edades a números:
```R
# Convertir las edades a valores numéricos
edades <- as.numeric(pacientes[, "Edad"])

# Calcular el promedio
mean(edades, na.rm = TRUE)
```

Ahora sí podemos obtener el promedio.

Pero detengámonos un momento:

**¿Por qué tenemos que convertir las edades a números si originalmente representan cantidades numéricas?**

Aquí aparece una de las principales limitaciones de las matrices en R.

Una matriz solamente puede almacenar un tipo de dato. Cuando combinamos números y cadenas de caracteres, R convierte todos los elementos al tipo de dato más general, en este caso, character.

Esto significa que nuestras edades dejaron de ser valores numéricos y se convirtieron en cadenas de caracteres.

3. ¿Qué preguntas consideras que sería relevante plantear?

Además de las preguntas relacionadas con los pacientes, podemos plantear algunas preguntas sobre la estructura de datos que acabamos de construir.
Preguntas sobre la información

   1. ¿Cuál es la edad promedio de los pacientes?
   2. ¿Cuántos pacientes tienen diabetes Tipo1 y cuántos Tipo2?
   3. ¿Qué pronóstico aparece con mayor frecuencia?
   4. ¿Cuál es el paciente de mayor edad?
   5. ¿Cuántos pacientes provienen de cada lugar?

Preguntas sobre la estructura de datos

   1. ¿Qué sucede cuando intentamos almacenar números y cadenas de caracteres en una misma matriz?
   2. ¿Por qué las edades se almacenan como cadenas de caracteres?
   3. ¿Qué inconvenientes encontramos al realizar operaciones matemáticas con los datos?
   4. ¿Existe otra estructura de datos en R que permita almacenar información de diferentes tipos sin necesidad de convertirla?
   5. ¿Qué ventajas tendría utilizar esa estructura en lugar de una matriz?

#### Actividad 2. Correspondiente a temas de: dataframes

Transformar la actividad de correspondientes a "vectores, listas y matrices" en un dataframe, y a partir de ese dataframe:

1. Cómo obtener la edad de Felipe
2. Cómo obtener el pronóstico de Leticia y Rosa
3. Agregar una columna que tome en cuenta el peso de los pacientes; los datos recabados son: 
Juan Pérez, 85 kg; Leticia Ramírez, 68 kg; Rosa Flores, 59 kg; Josue Navarrete, 96 kg; Felipe García, 73 kg
4. Reordena tu data.frame por edades; reordena por tipo de enfermedad
5. ¿Se puede hallar la edad promedio de los pacientes? Si es así, cuál es.

###### Actividad: Manipulación de un `data.frame` en R

####### Datos de los pacientes

Se cuenta con información de cinco pacientes. A partir de estos datos,
construiremos un `data.frame` que permita organizar, consultar y
manipular la información.

  Nombre              Edad Estado           Diabetes   Pronóstico   Residencia
  ----------------- ------ ---------------- ---------- ------------ ---------------------
  Juan Pérez            25 En observación   Tipo1      Pobre        `NA`
  Leticia Ramírez       34 En cuidado       Tipo2      Mejora       `NA`
  Rosa Flores           38 `NA`             Tipo1      Excelente    CDM
  Josue Navarrete       52 `NA`             Tipo2      Mejora       Veracruz
  Felipe García       `NA` `NA`             Tipo1      Pobre        Cuernavaca, Morelos

**Nota:** `NA` representa un dato no disponible o no especificado.

###### 1. Construcción del data.frame

Primero, creamos un objeto llamado `pacientes` que almacene la
información de la tabla.

``` r
pacientes <- data.frame(
  Nombre = c(
    "Juan Pérez",
    "Leticia Ramírez",
    "Rosa Flores",
    "Josue Navarrete",
    "Felipe García"
  ),
  Edad = c(25, 34, 38, 52, NA),
  Estado = c(
    "En observación",
    "En cuidado",
    NA,
    NA,
    NA
  ),
  Diabetes = c(
    "Tipo1",
    "Tipo2",
    "Tipo1",
    "Tipo2",
    "Tipo1"
  ),
  Pronostico = c(
    "Pobre",
    "Mejora",
    "Excelente",
    "Mejora",
    "Pobre"
  ),
  Residencia = c(
    NA,
    NA,
    "CDM",
    "Veracruz",
    "Cuernavaca, Morelos"
  )
)

# Visualizar el data.frame
print(pacientes)
```

Para conocer la estructura del objeto podemos utilizar:

``` r
str(pacientes)
```

La función `str()` permite observar las variables que contiene el `data.frame` y el tipo de dato de cada columna.

También podemos consultar sus dimensiones:
``` r
dim(pacientes)
```

Resultado:
``` text
[1] 5 6
```

Esto significa que tenemos cinco filas y seis columnas.

###### 2. Obtener la edad de Felipe García
Podemos consultar un dato específico utilizando los índices de fila y columna:

``` r
pacientes[5, 2]
```

En este caso:

-   El número `5` indica la quinta fila.
-   El número `2` indica la segunda columna.

También podemos obtener el dato mediante el nombre del paciente:

``` r
pacientes$Edad[pacientes$Nombre == "Felipe García"]
```

Resultado:

``` text
[1] NA
```

El resultado es `NA` porque no se proporcionó la edad de Felipe García.

## 3. Obtener el pronóstico de Leticia Ramírez y Rosa Flores

Podemos utilizar una condición lógica para localizar a los pacientes y recuperar sus pronósticos:

``` r
pacientes$Pronostico[
  pacientes$Nombre == "Leticia Ramírez" |
  pacientes$Nombre == "Rosa Flores"
]
```

Resultado:
``` text
[1] "Mejora"    "Excelente"
```

Otra alternativa es utilizar el operador `%in%`, que permite comprobar si los elementos pertenecen a un conjunto de valores:

``` r
pacientes$Pronostico[
  pacientes$Nombre %in% c("Leticia Ramírez", "Rosa Flores")
]
```

También podemos recuperar todas las columnas de esos pacientes:

``` r
pacientes[
  pacientes$Nombre %in% c("Leticia Ramírez", "Rosa Flores"),
]
```

###### 4. Agregar una columna con el peso de los pacientes

Agregaremos una nueva variable llamada `Peso`, que contendrá el peso de cada paciente en kilogramos.

  Nombre              Peso
  ----------------- ------
  Juan Pérez            85
  Leticia Ramírez       68
  Rosa Flores           59
  Josue Navarrete       96
  Felipe García         73

Para agregar la columna utilizamos:

``` r
pacientes$Peso <- c(85, 68, 59, 96, 73)
```

Podemos visualizar el resultado:

``` r
print(pacientes)
```

La nueva columna se incorpora al final del `data.frame`.

##### 5. Reordenar el data.frame

###### 5.1. Ordenar por edad

La función `order()` permite obtener el orden de los elementos de una variable:

``` r
pacientes[order(pacientes$Edad), ]
```

Por defecto, los valores faltantes (`NA`) aparecen al final.

Si queremos ordenar las edades de mayor a menor:

``` r
pacientes[order(pacientes$Edad, decreasing = TRUE), ]
```

##### 5.2. Ordenar por tipo de diabetes

También podemos ordenar los registros de acuerdo con el tipo de enfermedad:

``` r
pacientes[order(pacientes$Diabetes), ]
```

Esto organiza los registros alfabéticamente según el contenido de la columna `Diabetes`.

##### 5.3. Ordenar por más de una variable

Podemos combinar criterios de ordenamiento. Por ejemplo, ordenar primero por tipo de diabetes y después por edad:

``` r
pacientes[
  order(pacientes$Diabetes, pacientes$Edad),
]
```

De esta manera, los pacientes se organizan primero por tipo de diabetes y, dentro de cada grupo, por edad.

**Importante:** Estas instrucciones muestran el `data.frame` ordenado, pero no modifican permanentemente el objeto original.

Si queremos guardar el ordenamiento, podemos asignar el resultado
nuevamente:

``` r
pacientes <- pacientes[order(pacientes$Edad), ]
```

## 6. Calcular la edad promedio de los pacientes

Podemos calcular la edad promedio utilizando la función `mean()`:

``` r
mean(pacientes$Edad)
```

Sin embargo, al ejecutar esta instrucción obtendremos:

``` text
[1] NA
```

Esto sucede porque existe un valor faltante (`NA`) en la columna de edades.

Para calcular el promedio ignorando los valores faltantes, utilizamos el argumento `na.rm = TRUE`:

``` r
mean(pacientes$Edad, na.rm = TRUE)
```

Resultado:

``` text
[1] 37.25
```

Por lo tanto, la edad promedio de los pacientes es de **37.25 años**, considerando únicamente los cuatro pacientes cuya edad está disponible.

------------------------------------------------------------------------

# Código completo de la actividad

El siguiente código reúne todos los procedimientos anteriores:

``` r
# ==========================================
# ACTIVIDAD: MANIPULACIÓN DE UN DATA.FRAME
# ==========================================

# 1. Crear el data.frame

pacientes <- data.frame(
  Nombre = c(
    "Juan Pérez",
    "Leticia Ramírez",
    "Rosa Flores",
    "Josue Navarrete",
    "Felipe García"
  ),
  Edad = c(25, 34, 38, 52, NA),
  Estado = c(
    "En observación",
    "En cuidado",
    NA,
    NA,
    NA
  ),
  Diabetes = c(
    "Tipo1",
    "Tipo2",
    "Tipo1",
    "Tipo2",
    "Tipo1"
  ),
  Pronostico = c(
    "Pobre",
    "Mejora",
    "Excelente",
    "Mejora",
    "Pobre"
  ),
  Residencia = c(
    NA,
    NA,
    "CDM",
    "Veracruz",
    "Cuernavaca, Morelos"
  )
)

# Visualizar los datos
print(pacientes)


# 2. Obtener la edad de Felipe García

pacientes$Edad[pacientes$Nombre == "Felipe García"]


# 3. Obtener el pronóstico de Leticia Ramírez y Rosa Flores

pacientes$Pronostico[
  pacientes$Nombre %in% c("Leticia Ramírez", "Rosa Flores")
]


# 4. Agregar la columna Peso

pacientes$Peso <- c(85, 68, 59, 96, 73)

# Visualizar el data.frame actualizado
print(pacientes)


# 5. Ordenar por edad

pacientes[order(pacientes$Edad), ]


# Ordenar por edad de mayor a menor

pacientes[order(pacientes$Edad, decreasing = TRUE), ]


# Ordenar por tipo de diabetes

pacientes[order(pacientes$Diabetes), ]


# Ordenar por diabetes y después por edad

pacientes[order(pacientes$Diabetes, pacientes$Edad), ]


# 6. Calcular la edad promedio

mean(pacientes$Edad, na.rm = TRUE)
```

# Funciones y operadores utilizados

  -----------------------------------------------------------------------
  Función u operador                  Descripción
  ----------------------------------- -----------------------------------
  `data.frame()`                      Construye un `data.frame`.

  `print()`                           Muestra el contenido de un objeto.

  `str()`                             Muestra la estructura interna de un
                                      objeto.

  `dim()`                             Devuelve el número de filas y
                                      columnas.

  `$`                                 Permite acceder a una columna por
                                      su nombre.

  `[fila, columna]`                   Permite seleccionar filas y
                                      columnas.

  `==`                                Compara si dos valores son iguales.

  `\|`                                Operador lógico OR; permite
                                      combinar condiciones.

  `%in%`                              Comprueba si un elemento pertenece
                                      a un conjunto de valores.

  `order()`                           Devuelve el orden de los elementos.

  `mean()`                            Calcula la media aritmética.

  `na.rm = TRUE`                      Indica que se deben ignorar los
                                      valores faltantes.

  `NA`                                Representa un valor faltante.
  -----------------------------------------------------------------------


#### Actividad 3. Correspondiente a "dataframe": Vamos a explorar un conjunto de datos!
Instrucciones:

Para cada pregunta, debe:<br>
a) incluir el código que usó para generar el resultado<br>
b) muestre el resultado en un comentario dentro del script<br>

Considere los datos "DNase" precargados en R.
1. Dé un "vistazo" a estos datos
2. Muestre el nombre de las columnas
3. Cuántos registros tienen los datos
4. ¿Qué valor tiene la variable "conc" para la observación correspondiente a la cuadragésima quinta fila?
5. Crea un nuevo data frame a partir de los datos de DNase
6. Añade una nueva fila donde la variable Run tome el valor 5, la variable conc tome el valor 0.5 y la variable density tome el valor 2.3.
7. ¿Qué valor tiene la media (redondeada a 4 cifras decimales) de los  valores de la variable "density", en los registros cuyo valor de la variable "Run" sea 5?

```R
# ==========================================
# ACTIVIDAD 3. EXPLORACIÓN DE UN DATA FRAME
# Conjunto de datos: DNase
# ==========================================

# 1. Dar un vistazo a los datos
head(DNase)       # Muestra las primeras 6 filas
# Resultado:
# Se muestran las primeras 6 observaciones del conjunto DNase.

# También podemos consultar su estructura
str(DNase)
# Resultado:
# DNase contiene 176 observaciones y 3 variables:
# Run, conc y density.


# 2. Mostrar el nombre de las columnas
names(DNase)
# Resultado:
# [1] "Run" "conc" "density"


# 3. Contar cuántos registros tienen los datos
nrow(DNase)
# Resultado:
# [1] 176


# 4. Obtener el valor de conc en la fila 45
DNase$conc[45]
# Resultado:
# [1] 0.048


# 5. Crear un nuevo data frame a partir de DNase
datos <- data.frame(DNase)

# Comprobar la creación
head(datos)
# Resultado:
# Se muestran las primeras 6 filas del nuevo data frame.


# 6. Añadir una nueva fila
datos <- rbind(
  datos,
  data.frame(Run = 5, conc = 0.5, density = 2.3)
)

# Mostrar la última fila para comprobar que se agregó
tail(datos, 1)
# Resultado:
#     Run conc density
# 177   5  0.5     2.3


# 7. Calcular la media de density para los registros
# cuyo valor de Run sea 5, redondeada a 4 decimales

round(mean(datos$density[datos$Run == 5]), 4)

# Resultado:
# [1] 1.1096
```
Hint: usa la función "round", usa el "help", para ver su documentación

