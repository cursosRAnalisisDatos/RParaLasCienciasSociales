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
7. ¿Qué valor tiene la media (redondeada a 4 cifras decimales) de los valores de la variable "density", en los registros cuyo valor de la variable "Run" sea 5? 
Hint: usa la función "round", usa el "help", para ver su documentación

