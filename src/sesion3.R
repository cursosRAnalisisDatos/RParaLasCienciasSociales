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

vector_1 <- 1:4
vector_2 <- c("nombre1", "nombre2", "nombre3", "nombre5")
vector_3 <- 9:12
vector_4 <- 13:16
matriz1 <- cbind(vector_1, vector_2, vector_3, vector_4)
matriz1

class(matriz1)
dim(matriz1)

matriz1 * 2
        + 1

#------------
