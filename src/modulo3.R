#---------------
8
is.vector(8)

length(8)

is.vector("ocho")
length("ocho")

is.vector(TRUE)
length(TRUE)

#ejemplo de creacionde un vctor numerico
myVector <- c( 15, 4, 0, 5, 8, 13 )
is.vector( myVector  )

length( myVector )

#ejemplo de creacionde unvector de cadenas
myVectorCadena <- c( "hola", "mundo", "aca", "estoy")
length(myVectorCadena)

#ejemplo de creacion de un vector con datos logicos
# Vector lógico
myVectorLogico <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
is.vector( myVectorLogico )
length( myVectorLogico )

# agregando elementos a unvector numerico
vector <- c(1, 2, 3)
vector <- c(vector, 4)
vector

miVector1 <- c(20, 21, 22)
miVector2 <- c(23, 24, 25)

miVector3 <- c(miVector1, miVector2)
miVector3

vectorNumerico <- c(11, 12, 13)
class(vectorNumerico)

vectorNuevo <- c(vectorNumerico, "hola")
class(vectorNuevo)

# agregar a un vector numerico un objeto de tipo lógico
vectorNuevoLogico <- c(vectorNumerico, TRUE)
class(vectorNuevoLogico)

mi_vector_mezcla <- c(FALSE, 2, "tercero", 4.0099999)
class(mi_vector_mezcla)

1:10
10:1
x <- c(-50:-10)

80.15:90 #cifras decimales

-3.75:3 #decimales al inicio
46:50.05 ##decimales al final

vector <- c(28, 0, 1, 2, 3, 6, 7, 9, 10, 19)
vector + 2

vector * 2
vector %% 2


vector < 2
vector > 2
vector == 2

personaje <- c('Fernando', 'Alejandro', 'Moisés', 'Agustino', 'Ezequiel')
personaje
personaje[ -c(2, 5) ]

# probando la estructura de control condicional
x <- 6
y <- 7
if ( x<y ){
  x <- y+1
  "se cumplio"
}else{
  x <- y-1
  "no se cumplio"
}

dado <- 1:6
for (cara in dado){ #cara=1, cara=2, cara=3 ...
  resultado <- cara * 2
  print( resultado )
}
  
#quiero obtener la suma de los primeros 10 numeros
#consecutivos del 1-10
#sum(1:10)
x <- 0
y <- 0
for (i in 1:1000) {
  x<-x+i
}

matrix(1:15)

matrix(1:10, nrow = 3, ncol = 5)

#--------------------------
#Sesion 4, 18 de Noviembre de 2022

vector_1 <- 1:4
vector_2 <- 5:8
vector_3 <- 9:12
vector_4 <- 13:16
matrizTmp <- cbind(vector_1, vector_2, vector_3, vector_4)
matrizTmp
vector_5 <- 
matrizTmp <- cbind  
class(matrizTmp)
dim(matrizTmp)

matrizTmp * 2 #
matrizTmp + 1

x <- matrizTmp[2, 4]
x

renglon2 <- matrizTmp[2,]
renglon2 

columna3 <- matrizTmp[,3]
columna3

dim(matrizTmp)

#------------
# Listas
# 
lst <- list(name="Alex", wife="Mary", noChildren=3, childAges=c(4,7,9) )
lst

lst[[4]][2]

class(lst)
length(lst)

lst$childAges

lst1 <- list(name="Alex", wife="Mary", noChildren=3, childAges=c(4,7,9))
lst2 <- list(name="Fede", wife="Irma", noChildren=2, childAges=c(1,6))
lst3 <- list(name="Toño", wife="Elisa", noChildren=4)

listaTotal <- c(lst1, lst2, lst3)
listaTotal

############################
## dataframes

iris
head(iris)
head(iris, n=10)
tail(iris)

###-----
nombre <- c("Juan", "Margarita", "Ruben", "Daniel")
apellido <- c("Sanchez", "Garcia", "Sancho", "Alfara")
fecha_nacimiento <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
nro_hijos <- c(1, 2, 3, 4)

# Creamos un dataframe usando la función **data.frame()**
censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
censo
class(censo)
dim(censo)

dim(censo)[1]
nrow(censo)
dim(censo)[2]
ncol(censo)
length(censo)

# Asignamos diferentes nombres a las columas de `censo`
names(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", "Sexo", "Numero_Hijos")
names(censo)

#
colnames(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", "Sexo", "Numero_Hijos")
rownames(censo) <- c("ID1", "ID2", "ID3", "ID4")
censo

censo[2,]
censo[2:4, ]

censo[,2]
censo$Nombre
censo[, "Nombre"]
censo[["Nombre"]]

censoOrdenado <- censo[order(censo$Nombre, decreasing = TRUE), ]
censoOrdenado

########
#Sesion 5, 25 de noviembre 2022
## dando continuidad al uso de marco de datos
# vectorizacion con marco de datos
hijos  <- c(1, 2, 3, 4)
edades <- c(20, 35, 32, 51)
pruebaVectorizacion <- data.frame(hijos, edades)
pruebaVectorizacion * 3

##censo * 3
censo <- cbind(censo, direccion = c("Col.Portales",
                                    "Col. El Retoño", 
                                    "Col. Roma Sur", 
                                    "Col. Santa Fe"))

censo

censo$correoElectronico <- c( "juan@correo.com",
                              "margarita@correo.com",
                              "ruben@correo.com",
                              "daniel@correo.com")

censo$tieneHijos <- censo$nro_hijos > 2

nrow(censo)
censo[nrow(censo) + 1,] <- c("Claudia", "Guevara", "1990-08-03", "MUJER", 2)

censo <- rbind(censo, c("Raul", 
                        "Hidalgo", 
                        "1986-04-09", 
                        "HOMBRE", 
                        0,))

temp  <- c(7.2, NA, 7.1, 6.9, 6.5, 5.8, NA, 5.8, 5.5, 5.5)
temp
sum(temp, na.rm = TRUE)
censoTmp$nombre

datosFiltrado <- censo[censo$sexo == "MUJER",]
datosFiltrado
censo

###SESION 6 2deDiciembre
class(censo$fecha_nacimiento)

edad <- c(43, NA, 49, NA)
censo <- cbind(censo, edad)
censo

censo[order(censo$nombre),]

edades  <- c(7, NA, 7, 6, 6, 5, 5, 5, NA, 5)
edades
length(sort(edades))

order(edades)

#1. crear un registro más (una fila)
vectorTmp1 <- c("Daniela","Garduño","1976-06-14","MUJER", 8, 28)
vectorTmp1
#2. unir al resto del marco de datos:censo
censo <- rbind(censo, vectorTmp1)
censo
censoOrdenado <- censo[order(censo$nombre, censo$nro_hijos, decreasing = TRUE), ]
censoOrdenado

datosHabitacion <- data.frame("nombre" = c("Juan", "Margarita", "Ruben", "Daniel"), 
                              "tipHab" = c("casa", "depto", "depto", "casa"), 
                              "noFocos"= c(20,8,12,32),
                              "habPropia" = c(TRUE, TRUE, FALSE, TRUE))
nuevosDatos <- merge( censo, datosHabitacion)

str(censo)

fechas <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
class(fechas)
fecha_nacimiento <- as.Date(c("1976-02-31", "1974-05-07", "1958-12-25", "1983-09-19"))
fecha_nacimiento
class(fecha_nacimiento)
