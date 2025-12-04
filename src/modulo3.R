#
#
#
#
#
8
is.vector(8)
length(8)

is.vector("ocho")
length("ocho")

is.vector(TRUE)
length(TRUE)

vectorNumerico <- c(9, 34, 21, 8, 37, 98, 1, 0, 90)
length(vectorNumerico)
c("mujer", "hombre", "adolescente")
c(TRUE, TRUE, FALSE, FALSE, TRUE)

vector <- c(TRUE, FALSE, TRUE)
vector
vector <- c(vector, TRUE, FALSE)
vector

mi_vector_1 <- c(20, 21, 22)
mi_vector_2 <- c(23, 24, 25, 28)
mi_vector_1
mi_vector_2

mi_vector_3 <- c(mi_vector_1, mi_vector_2)
mi_vector_3

#######
# Probando la homogeneidad del vector, ....
v <- c(11, 12, 13)
v
is.vector(v)
class(v)

v_n <- c(v, "hola")
v_n

vectorCadenas <- c("mujer", "hombre", "adolescente")
vectorSorpresa <- c(vectorCadenas, 11)
class( vectorSorpresa )

mi_vector_mezcla <- c(FALSE, 2, "tercero", 4.10)
is.vector(mi_vector_mezcla)
length(mi_vector_mezcla)
class(mi_vector_mezcla)

secuencial <- c(1,2,3,4,5,6,7,8,9,10)
secuencial

1:10
10:1
-50:-10
80.15:90 #cifras decimales
-3.75:3 #decimales al inicio
46:50.05 #decimales al final

# vectorizacion de funciones
vector <- c(28, 0, 1, 2, 3, 6, 7, 9, 10, 19)
vector + 2
vector * 2
vector %% 2 # banderita a valores binarios

vector < 10
vector > 10
vector == 10

personaje <- c('Fernando', 'Alejandro', 'Moisés', 'Agustino', 'Ezequiel')
personaje[-c(2, 5)]

####################################
pesos <- c(34,56,78,23,56,78,90,56,89,34,12,45)
promedio <- sum(pesos)/length(pesos)

#############################
#matrices

matrix(1:15) 

matrix(1:12, nrow = 3, ncol = 4)
# Cuatro renglones y tres columnas
matrix(1:12, nrow = 4, ncol = 3)


vector_1 <- 1:4
vector_2 <- 5:8
vector_3 <- 9:12
vector_4 <- 13:16

matriz <- rbind(vector_1, vector_2, vector_3, vector_4)
matriz

x <- matriz[3, 2]
x
ren <- matriz[3, ]
length(ren)
col <- matriz[ ,4]
col
matriz
dim(matriz)

########
#######
# listas

lst1 <- list("Fred", "Mary", 3, c(4,7,9))
lst <- list(name="Alex", wife="Mary", noChildren=3, childAges=c(4,7,9))

lst[[4]][3]
class(lst)
length(lst)

lst$childAges[2]

iris
View(iris)
head(iris)
help(head)
head(iris, n=3)
tail(iris)

Titanic

str(iris)

nombre <- c("Juan", "Margarita", "Ruben", "Daniel")
apellido <- c("Sanchez", "Garcia", "Sancho", "Alfara")
fecha_nacimiento <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
nro_hijos <- c(1, 2, 3, 4)

censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
censo

dim(censo)

#acceso a la cantidad de renglones que tengo para el dataframe
dim(censo)[1]
nrow(censo)

#acceso a la cantidad de columnas que tengo para el dataframe
dim(censo)[2]
ncol(censo)
length(censo)

names(censo)
names(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", "Sexo", "Numero_Hijos")
names(censo)

colnames(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", "Sexo", "Numero_Hijos")
rownames(censo) <- c("ID1", "ID2", "ID3", "ID4")
censo

censo[2, ] # todo el registro número 2
censo[2:4, ] # del registro 2 al 4. 

censo
censo[, 2]
censo[, 1:3]
censo[1:3, 1:3]
censo$Nombre
censo[, "Nombre"]
censo[["Nombre"]]

censo <- rbind(censo, c("Mirna", "Tapia", "1990-02-12", "MUJER", 0))
censo <- rbind(censo, c("Ameyalli", 
                        "Flores", 
                        "1988-03-25", 
                        "MUJER", 
                        0))
censo <- rbind(censo, c("Roxana", 
                        "Vera", 
                        "1985-08-03", 
                        "MUJER", 
                        0))
censo <- rbind(censo, c("Clara", 
                        "Mejia", 
                        "1960-07-22", 
                        "MUJER", 
                        0))
censo

censo[ censo$Sexo == "MUJER" & censo$Numero_Hijos == 0, ][2:5,]

# ejemplo temporal para mostrar como trabaja la vectorizacion en dataframes
hijos <- c(1, 2, 3, 4)
edades <-c(20, 35, 32, 51)
pruebaVectorizacion <- data.frame(hijos, edades)
pruebaVectorizacion
pruebaVectorizacion * 2

censo * 2 # marca error porque ....


censo <- cbind(censo, direccion = c("Col.Portales","Col. El Retoño", "Col. Roma Sur", 
                                    "Col. Santa Fe", "Col.Portales","Col. El Retoño", 
                                    "Col. Roma Sur", "Col. Santa Fe"))
censo

censo$correoElectronico <- c( "juan@correo.com",
                              "margarita@correo.com",
                              "ruben@correo.com",
                              "daniel@correo.com",
                              "mirna@correo.com",
                              "ameyalli@correo.com",
                              "roxana@correo.com",
                              "clara@correo.com")

censo$TieneHijos <- censo$Numero_Hijos > 0
censo


censo[ nrow(censo) +1 , ] = c("Juan", "Guevara", "1990-08-03", "HOMBRE", 2, 
                              "Col. Del Valle", "juan@correo.com", TRUE)

censo <- rbind(censo, c("Raul", "Hidalgo", "1986-04-09", "HOMBRE", 0, 
                        "Col. Del Valle", "raul@correo.com", FALSE))
censo

temp  <- c(7.2, NA, 7.1, 6.9, 6.5, 5.8, 5.8, 5.5, NA, 5.5)
temp
sum( temp, na.rm=TRUE )

censo
censo <- censo[censo$Nombre != 'Juan',]
censo

edad <- c(43, NA, 49, NA,34,56,78,45)
censo <- cbind(censo, edad)
censo
censo[order(censo$edad), ]

edades  <- c(7, NA, 7, 6, 6, 5, 5, 5, NA, 5)
sort(edades)
order(edades)
View(censo)

censo[order(censo$Nombre, decreasing = TRUE),]
censo[order(censo$Nombre, decreasing = FALSE),]
censoOrdenado <- censo[order(censo$Nombre), ]
censoOrdenado
censo[order(censo$Sexo, censo$Numero_Hijos), ]

datosHabitacion <- data.frame("Nombre" = c("Juan", "Margarita", "Ruben", "Daniel"), 
                              "tipHab" = c("casa", "depto", "depto", "casa"), 
                              "noFocos"= c(20,8,12,32),
                              "habPropia" = c(TRUE, TRUE, FALSE, TRUE))
View(datosHabitacion)

nuevosDatos <- merge(censo, datosHabitacion)
nuevosDatos

help(merge)

class(nuevosDatos)

fecha_nacimiento <- as.Date(c("1976-06-04", "1974-05-08", "1958-12-25", 
                              "1983-09-19", "1974-05-07"))
sort(fecha_nacimiento)
class(fecha_nacimiento)

#yyyy-mm-dd X 1978-01-01
#dd-mm-yyyy
#/
# JAN, FEB, 

class(fecha_nacimiento)

id <- c(1,2,3,4,5,6,7,8,9)
valor <- c(7,1,12,4,5,16,71,38,19)
categoria <- c(rep("bajo",3),rep("medio",3),rep("alto",3))
categoria
color <- c(rep("rojo",1),rep("azul",2),
           rep("naranja",2),rep("morado",1),
           rep("amarillo",2),rep("verde",1))

datos <- data.frame(id = c(1,2,3,4,5,6,7,8,9), 
                    valor = valor, 
                    categoria = categoria, 
                    color = color)
head(datos, n=9)

borrar <- c("valor","categoria")
datos2 <- datos[ , !(names(datos) %in% borrar)]
head(datos2, n=5)

datosHabitacion5 <- data.frame(persona=c("Juan", "Margarita", "Ruben", "Daniel"), 
                              c("casa", "depto", "depto", "casa"), 
                              c(20,8,12,32),
                              c(TRUE, TRUE, FALSE, TRUE))
datosHabitacion5$persona
