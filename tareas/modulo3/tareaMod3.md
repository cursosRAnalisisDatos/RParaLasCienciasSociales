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
Para cada pregunta, debe:
a) incluir el código que usó para generar el resultado
b) muestre el resultado en un comentario dentro del script

Considere los datos "DNase" precargados en R.
1. Dé un "vistazo" a estos datos
2. Muestre el nombre de las columnas
3. Cuántos registros tienen los datos
4. ¿Qué valor tiene la variable "conc" para la observación correspondiente a la cuadragésima quinta fila?
5. Crea un nuevo data frame a partir de los datos de DNase
6. Añade una nueva fila donde la variable Run tome el valor 5, la variable conc tome el valor 0.5 y la variable density tome el valor 2.3.
7. ¿Qué valor tiene la media (redondeada a 4 cifras decimales) de los valores de la variable "density", en los registros cuyo valor de la variable "Run" sea 5? 
Hint: usa la función "round", usa el "help", para ver su documentación
