## ------------------------------------------------------------------------------
# Ejercicios con listas

#1. Creación de una lista
#Una lista en R puede contener elementos de distintos tipos: vectores, números, texto, matrices o incluso otras listas.
#Ejercicio 1
#Crea una lista llamada mi_lista que contenga:
#1. Un vector numérico del 1 al 5 llamado numeros.
#2. Un vector de caracteres con los nombres "Ana", "Juan", "Sofía" llamado nombres.
#3. Una matriz de 2 × 2 con los valores del 1 al 4.
# Solución
mi_lista <- list(
  numeros = 1:5,
  nombres = c("Ana", "Juan", "Sofía"),
  matriz = matrix(1:4, nrow = 2)
)
print(mi_lista)


#2. Acceso a los elementos de una lista
#Para acceder a un elemento de una lista se usan doble corchete [[ ]] (para extraer el objeto original) o el operador 
#de dólar $ si la lista tiene nombres. Si usas un solo corchete [ ], obtendrás una sub-lista.
#Ejercicio 2
#Utilizando la lista mi_lista creada en el ejercicio anterior:
#1. Accede al vector nombres usando el operador $.
#2. Accede al primer elemento del vector numeros usando doble corchete [[ ]].
#3. Accede al elemento que está en la fila 2, columna 1 de la matriz.
# Solución 1: Usando $
mi_lista$nombres

# Solución 2: Usando doble corchete y corchete anidado
mi_lista$numeros[1]
# O alternativamente:
mi_lista[[1]][1]

# Solución 3: Acceder a la matriz y a su posición (fila 2, columna 1)
mi_lista$matriz[2, 1]
# O alternativamente:
mi_lista[[3]][2, 1]


#3. Modificar y añadir elementos
# Puedes agregar nuevos componentes a una lista o modificar los existentes asignándoles un nuevo valor.
#Ejercicio 3
#1. Añade un nuevo elemento a mi_lista llamado activo con el valor lógico TRUE.
#2. Modifica el vector nombres para agregar un cuarto nombre: "Carlos".
# Solución 1: Añadir elemento
mi_lista$activo <- TRUE

# Solución 2: Modificar elemento
mi_lista$nombres <- c(mi_lista$nombres, "Carlos")
print(mi_lista)

#4. Aplicar funciones a listas (lapply y sapply)
#Para recorrer una lista y aplicar una función a cada uno de sus elementos, R provee la familia de funciones apply, 
#siendo lapply() (devuelve una lista) y sapply() (devuelve un vector o matriz simplificado) las más utilizadas.
#Ejercicio 4
#Dada la siguiente lista:

lista_notas <- list(
  grupo1 = c(8, 9, 7, 10),
  grupo2 = c(5, 6, 8, 7, 9),
  grupo3 = c(10, 10, 9)
)
#1. Usa lapply() para calcular la longitud (número de alumnos) de cada grupo.
#2. Usa sapply() para calcular la media (promedio) de notas de cada grupo.

# Solución 1: Longitud de cada elemento
lapply(lista_notas, length)

# Solución 2: Media de cada elemento
sapply(lista_notas, mean)


# ------------------------------------------------------------------------------
# Ejercicios con dataframes

#1. Dados los siguientes datos, genere un dataframe
nombre <- c("Juan", "Margarita", "Ruben", "Daniel")
apellido <- c("Sanchez", "Garcia", "Sancho", "Alfara")
fecha_nacimiento <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
nro_hijos <- c(1, 2, 1, 3)

## RESPUESTA
censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
#pero va a generar un error, porque la longitud del vector nro_hijos es más grande

#2. Se tienen los datos de 5 pacientes (sexo,presión arterial y pulsos por minuto), 
#atendidos en un hospital
sexo <- c("M","F","M","F","F")
presionArterial <- c("120/70", "128/45", "141/74", "133/69", "156/43")
pulsosXMinuto <- c(88, 85, 78, 128, 149)

#2.1 Crear un dataframe que guarde esta información y que se llame "datos",
datos <- data.frame(sexo, presionArterial, pulsosXMinuto)

#2.2 que hagan un respaldo del dataframe (sólo que lo copien en otro dataframe 
#pacientes = datos
pacientes <- datos

#2.3 Mostrar los valores para las 3 variables para el primer individuo y el cuarto indi#viduo
#Los corchetes [] permiten identificar la ubicación, en la lista del dato que se desea mostrar. 
#En el caso de los dobles corchetes [[]] se especifica con detalle el dato buscado en 
#la lista y se presenta para la operación

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


#2.4 Determinar la media del pulso de las mujeres
#La función sum() suma los componentes de un vector.
mujer1<-datos[[3]][[2]]
mujer1
mujer2<-datos[[3]][[4]]
mujer2
mujer3<-datos[[3]][[5]]
mujer3

todos<-sum(mujer1,mujer2,mujer3)
todos

## [1] 362

media<-todos/3
media

## [1] 120.6667


#2.5 Calcular la raíz cuadrada de los pulsos por minuto del cuarto paciente.
# La función sqrt ejecuta la raíz del dato seleccionado.
pacienteSQRT<-datos[[3]][[4]]
pacienteSQRT
## [1] 128

sqrt(pacienteSQRT)
## [1] 11.31371

# ----------------------------------------------------------------------------------------------------------
# Ejercicio 3
# Objetivo: Que el participante se familiarice con el uso de las funciones y operaciones para el data.frame
# Nota: (Este ejercicio se puede revisar cuando ya se haya presentado el tema completo de dataframe)
# ----------------------------------------------------------------------------------------------------------

#Funciones extras
# - data() muestra los datos precargados

# Datos: data.frame precargado de R
# Carros de 1920: conversión, añadir y quitar columnas
# Para cargar al espacio de trabajo
# cars   ##1a opción
data(cars)
cars   # datos de 1920: velocidad y distancia de frenado
# Los datos se encuentran en unidades mph (millas por hora), y ft (pies)

#1. Cambiar los datos a algo más familiar: kph y m (através de una conversión)
#2. Y agregar las columnas con los nuevos datos

#Formas de agregar las columnas
cars$kph <- cars$speed / 0.62137
cars$meters <- cars$dist / 3.2808

# creando vectores temporales
kph<- cars$speed / 0.62137
frenadoMetros <- cars$dist / 3.2808

##Diferentes maneras de AGREGAR columnas al data.frame:
## 1a opción
cars<- cbind(cars, kph, frenadoMetros)

## 2a opción
cars<- cbind(cars[,c("speed","dist")], kph, frenadoMetros)

## 3a opción
cars<- cbind(cars[,c(1,2)], kph, frenadoMetros)

# ----------------------------------------------------------------------------------------------------------
# Ejercicio4. Practicar agregar, eliminar, ordenar y cambiar nombres de las columnas
# ----------------------------------------------------------------------------------------------------------

# Datos: data.frame precargado de R: women, precargado, 1975, 30-39 años
## height (in)  weight (lbs)
# - AGREGAR una fila, que se olvidó con datos: 74 in, 161 lbs
# - Conservamos el nombre del data.frame y agregamos la fila
women<- rbind(women,c(74,161))
women

# Conversión de longitud
meter<- women$height*0.0254

# Agregar la columna en metros
women<- cbind(women, meter)

# Finalmente ORDENAR respecto a la estatura
women<- women[order(women$meter),]
women

# Quitar la columna en in, pero conservar el data.frame inicial
womenSI<- women[,-c(1)]

names(women)
names(womenSI)

# Cambiar nombres
names(women)<- c("estatura(in)", "peso (lbs)", "estatura (m)")
names(womenSI)<- c("peso (lbs)", "estatura (m)")

# Para eliminar la columna en in , (algunas tienen errores, ¿cuál será la correcta?)
womenSI<- women[,-height]
womenSI<- women[,-"height"]
womenSI<- women[,-c(height)]
womenSI<- women[,-c(1)]

# ----------------------------------------------------------------------------------------------------------
# Ejercicio5. Calcular la edad de una persona en años
# ----------------------------------------------------------------------------------------------------------
# 1. Define la fecha de nacimiento como un objeto de fecha
fecha_nacimiento <- as.Date("1988-12-23")

# 2. Obtén la fecha actual
fecha_actual <- Sys.Date()

# 3. Extrae el año de ambas fechas
año_nacimiento <- format(fecha_nacimiento, "%Y")
año_actual <- format(fecha_actual, "%Y")

# 4. Calcula la diferencia
años_cumplidos <- as.numeric(año_actual) - as.numeric(año_nacimiento)

# Muestra el resultado
print(años_cumplidos)
