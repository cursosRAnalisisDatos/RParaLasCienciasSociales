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

```R
  ### Respuestas: Introducción a R para las ciencias sociales
  ###
  ###   Tarea 2    
  ###   7 de noviembre de 2026
  ##########################
  
  ###   EJERCICIO 1
  ##1. Correspondiente a temas de: vectores, listas y matrices.
  
  ##Dado el grupo de pacientes:
  ##  Juan Pérez, de 25 años, en observación, paciente con diabetes Tipo1, pronóstico: Pobre.
  ##  Leticia Ramírez, en cuidado, de 34 años, con diabetes Tipo2, pronóstico: Mejora.
  ##  Rosa Flores: de 38 años, con diabetes Tipo1, pronóstico: Excelente. residente de la CDMX.
##  Josue Navarrete pronóstico: mejora; de 52 años, de Veracruz, paciente con diabetes Tipo2.
##  Felipe García; con diabetes Tipo1, pronóstico: Pobre. de Cuernavaca, Morelos.

##  1.  Construir el objeto que consideres más adecuado que contenga estos datos
##  2. Construye la matriz que guarde la información anterior.
##  3. ¿Qué preguntas consideras que sería relevante plantear si aumentaran los 
##      datos y no comenzar desde cero?
  
##    Nota: los nombres son ficticios.


#########  SOLUCIÓN
### 1. Construir vectores: 

nombre <- c("Juan Perez", "Leticia Ramirez", "Rosa Flores",
            "Josue Navarrete", "Felipe García")
edad <- c(25,34,38,52,"n.d.")
estatus <- c("en observación", "en cuidado", "n.d.", "n.d.", "n.d.")
enfermedad <- c("Diabetes tipo 1", "Diabetes tipo 2", "Diabetes tipo 1",
                "Diabetes tipo 2", "Diabetes tipo 1")
pronostico <- c("Pobre", "Mejora", "Excelente", "Mejora", "Pobre") 
ciudad <- c("n.d.", "n.d.", "n.d.", "n.d.", "Cuernavaca")
entidad <- c("n.d.", "n.d.", "CDMX", "Veracruz", "Morelos")

####  Luego crear otro objeto a partir de los vectores: 
Reporte_clinico <- list(nombre, edad, estatus, enfermedad, pronostico, ciudad, entidad)    
print(Reporte_clinico)

# Se  utiliza   "n.d."  NA, 98, SI NO HAY INFORMACION de algún registro

### 2. Construir la matriz 
# Utilizamos la función cbind() PARA UNIR LOS VECTORES, USANDO CADA UNO COMO UNA COLUMNA

matriz <- cbind(nombre, edad, estatus, enfermedad, pronostico, ciudad, entidad)
matriz


####  3.  Posibles  preguntas
### a)  Cómo añadir un registro adicional: en el mismo orden ingresado
new_registro <-c("Sandra",37, "en observación", "Diabetes tipo 1","mejora", 
                 "Guadalajara", "n.d")

matrizB <- rbind(matriz, new_registro)
print(matrizB)

###################### Ejemplos de preguntas
##1 ¿Cuantos duplicados se identificarán si aumenta la cantidad de datos?
##2 ¿conviene actalizar datos trimestralmente?

###  También preguntas de investigación: 
#  1. ¿Que rango de edades tienen Pobre en pronostico?
#  2. ¿Que tipo de diabetes tiene Mejora en pronostico?
#  3. ¿Cuantos pacientes tienen diabetes tipo1 y cuantos tienen tipo2?

###########                      ##########
###   EJERCICIO 2

###   2. Pegado de objetos

###   Dada la lista de la sesión
###   lst <- list(name="Alex", wife="Mary", noChildren=3, childAges=c(4,7,9))
###   y la matriz
###   matriz <- matrix(1:12, nrow = 4, ncol = 3)

#########  SOLUCIÓN
###   a)  ¿Cómo se podría construir una nueva lista que contemple a ambos?

###   1era opcion: Concatenando listas
###  Los objetos que se tienen:
lst <- list(name="Alex", wife="Mary", noChildren=3, childAges=c(4,7,9) )
matriz <- matrix(1:12, nrow = 4, ncol = 3)


###  Se concatenando  y seobtiene una nueva lista 
lstA <- c(lst,pegote=matriz) 
lstA


###   b) ¿Cómo obtener la edad del 2o hijo, o sea, con qué código se puede hacer?
###   Cuiddando la sintaxis, y usando las propiedades ordenadas de lista:
###   Hay 2 formas de acceder:
lstA[[4]][2] 

lstA$childAges[2]

####   En ambas fromas el resultado numérico es  7
```
#####     FIN  de la Tarea 2

