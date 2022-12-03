###

euros <- 10
if (euros < 0){
  print("Estás en números negativos")
}else{
  print("sí suma la cantidad a mi estado de cuenta")
}

###
num_real <- 5.43
num_entero <- -10
if(num_real < num_entero) {
  "condición1-TRUE"
} else if(num_real > num_entero & num_real > 0) {
  "condición2-TRUE"
} else {
  "condiciones-FALSE"
}


resultado <- ifelse(c(3,4,5,6,7) < num_real, "condición-TRUE", "condición-FALSE")
resultado

for (i in 1:10){
  print(i)
}

lista1 <- list(equipo="verde", componentes=2, nombres=c("Ana", "Juan"), ganador=TRUE) 
for(i in lista1) {
  #class(i);
  #print(i)
  cat("El valor:",i,":/:",class(i),"\n")
}

num_entero <- 3 
num_real <-10
while(num_real > 1 | num_entero < num_real) {
  num_real <- num_real - 3
  print("entro al ciclo")
}

iris
library(help = "datasets")
