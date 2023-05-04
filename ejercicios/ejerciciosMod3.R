# @author: Virginia Teodosio
# @email: lunysska@gmail.com
# @date: Nov, 2022.
# @version: 1.0

# Objetivo: Que el participante se familiarice con errores en el código (en 
# la terminal de R y de tipo semántico) y pueda identificarlos y corregirlos.

# Instrucciones: 
# 1. Ejecuta una línea a la vez, en el orden de aparición,
# 2. Corrígelos en ese mismo orden 
# 3. Ve incluyendo en el script los errores que van generando, en líneas comentadas

# ------------------------------------------------------------------------------
# Ejercicios con matrices
# 1. (RESPUESTA:índice fuera de los límites)
matriz <- matrix(1:12, nrow = 4, ncol = 3)
matriz
x <- matriz[1, 4]

# 2. Extrayendo una columna de la matriz (RESPUESTA: error semántico, porque se esta extrayendo el renglón)
columna <- matriz[4,]
columna

# ------------------------------------------------------------------------------
# Ejercicios con listas
# 1. Definiendo una lista
#Dada la lista
lst <- list(name="Fred", wife="Mary", no.children=3, child.ages=c(4,7,9))

#queremos saber que tamaño tiene la lista 
#(RESPUESTA: error, la funcion no es size, es length!)
size(lst)

# 2. Queremos conocer el elemento en la posicion 3, se debe usar la sintáxis adecuada
lst[[3]]
lst[3]
# 2.1 Cual es la diferencia de ambas expresiones? (RESPUESTA la primera es el elemento 
#numérico, la segunda es el componente, por lo tanto es una lista)

# 2.2 Intente operar aritméticamente con ambas expresiones
# RESPUESTA (eliminar las siguientes dos líneas)
# lst[3] + 2 
# lst[[3]] + 2

# 2.3 Con qué función podríamos conocer de qué tipo es el dato(RESPUESTA, con la función 
#class, uno dirá que es numérico y el otro lista)
#Respuesta: (eliminar las siguientes dos líneas)
#class(lst[[3]])
#class(lst[3])

# 2.4 Qué pasa si se crea una lista D, de la unión de tres listas A, B, C, donde cada 
# una de ellas tienen una variable con el mismo nombre "name" y se imprime D$name
# qué valor exhibe?
# Pruébelo!
# RESPUESTA la primer ocurrencia que encuentre
# RESpuesta, código que se debe borrar, las siguientes 5 lineas
#lst.A <- list(name="uno", wife="Mary", noChildren=3, childAges=c(4,7,9) )
#lst.B <- list(name="dos", wife="Mary", noChildren=3, childAges=c(4,7,9) )
#lst.C <- list(name="tres", wife="Mary", noChildren=3, childAges=c(4,7,9) )
#lst.ABC <- c(lst.A, lst.B, lst.C )
#lst.ABC$name

# ------------------------------------------------------------------------------
# Ejercicios con dataframes

#1. Dados los siguientes datos, genere un dataframe
nombre <- c("Juan", "Margarita", "Ruben", "Daniel")
apellido <- c("Sanchez", "Garcia", "Sancho", "Alfara")
fecha_nacimiento <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
nro_hijos <- c(1, 2, 1, 3, 2)

#Acá va la linea del dataframe
#RESPUESTA
censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
#pero va a generar un error, porque la longitud del vector nro_hijos es más grande

#2. La tabla recopila información de 5 pacientes (sexo,presión arterial y pulsos por minuto), atendidos en un hospital

#2.1 que llamen al dataframe "datos",
#2.2 que hagan un respaldo del dataframe (sólo que lo copien en otro dataframe pacientes = datos
#2.3 Mostrar los valores para las 3 variables para el primer individuo y el cuarto indi#viduo
#Los corchetes [] permiten identificar la ubicación, en la lista del dato que se desea mostrar . 
#En el caso de los dobles corchetes [[]] se especifica con detalle el dato buscado en la lista y se presenta para la operación

#primer individuo 
datos[1, ]
##     Sexo Presi.n.arterial Pulso.x.min
## 1 Hombre              119          59

#cuarto individuo 
datos[ 4, ]
##     Sexo Presi.n.arterial Pulso.x.min
## 4 Hombre               78          76

#valores del individuo 1 y 4
datos [c(1,4), c(2,3)]


#2.4 Determinar la media del pulso de los hombres.
#La función sum() suma los componentes de un vector.

hombre1<-datos[[3]][[1]]
hombre2<-datos[[3]][[3]]
hombre3<-datos[[3]][[4]]

todos<-sum(hombre1,hombre2,hombre3)
todos

## [1] 242

media<-todos/3
media

## [1] 80.66667


#2.5 Calcular la raíz cuadrada de la presión arterial del cuarto paciente.
# La función sqrt ejecuta la raíz del dato seleccionado.

hombre2<-datos[[2]][[4]]
hombre2

## [1] 78

sqrt(hombre2)

## [1] 8.831761

