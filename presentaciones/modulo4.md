## Módulo4. Estructuras de Control
### Flujo secuencial
- 1. Operacion 1
- 2. Operacion 2
- 3. Operacion 3
- ....

### Condicionales
#### if/else
```r
if(condición) {
  operaciones_si_condición=TRUE
} else {
  operaciones_si_condición=FALSE
}

euros <- -20
if (euros < 0){
  print("Estás en números negativos")
}
```

#### Condicionales anidadas: if/else,if/else
```r
if(condición1) {
  operaciones_si_condición=TRUE
} else if(condición2) {
  operaciones_si_condición2=TRUE
} else { 
  operaciones_si_condiciones=FALSE
}
```

Ejemplo
```r
num_real <- 5.43
num_entero <- -10
if(num_real < num_entero) {
  "condición1-TRUE"
} else if(num_real > num_entero & num_real > 0) {
  "condición2-TRUE"
} else {
  "condiciones-FALSE"
}
```

#### Condicionales aplicadas a un vector y a un dataframe
```r
resultado <- ifelse(c(3,4,5,6,7) < num_real, "condición-TRUE", "condición-FALSE")
```
```r
# 1. Creamos un data frame de inventario
inventario <- data.frame(
  producto = c("Teclado", "Mouse", "Monitor", "Cables"),
  stock = c(15, 3, 0, 50),
  precio = c(25, 15, 150, 5)
)

# 2. Usamos 'if' para evaluar una condición global
# Queremos revisar si el promedio de stock es crítico (menor a 20 unidades)
if (mean(inventario$stock) < 20) {
  print("ALERTA: El inventario promedio global es bajo. Considerar reabastecer.")
} else {
  print("El inventario general está en niveles óptimos.")
}
```



### Ciclos 
#### for
```r
for(elemento in estructura){
  operaciones_con/sin_elemento
}

for (i in 1:10){
  print(i)
}

lista1 <- list(equipo="verde", componentes=2, nombres=c("Ana", "Juan"), ganador=TRUE) 
for(i in lista1) {
  #class(i);
  #print(i)
  cat("el valor:",i,":",class(i),"\n")
}

# other
vector_for1 <- 1
for(i in 2:7) {
  vector_for1[i] <- i
}
```

#### ciclos while

Se repite el ciclo, mientras la **condicion** sea evaluada a **TRUE**
```r
while(condicion) {
  operaciones_si_condicion=TRUE
}
```

Ejemplo
```r
while(num_real > 1 | num_entero < num_real) {
  num_real <- num_real - 3
}
```
```r
# Un sistema de categorización de productos y control de calidad de datos.
# 1. Crear un data frame con datos de ventas e inventario
tienda <- data.frame(
  producto = c("Laptop", "Mouse Wireless", "Teclado Mecánico", "Monitor 4K", "Cable HDMI"),
  stock = c(5, 45, 12, 0, 120),
  precio = c(1200, 25, 80, 450, 15),
  ventas_mes = c(18, 110, 35, 4, 210)
)

# 2. Inicializar nuevas columnas vacías para guardar los cálculos
tienda$prioridad_compra <- NA
tienda$rendimiento <- NA
nrow(tienda)

# 3. Estructura de control elaborada: Bucle + Condicionales anidados (Fila por Fila)
for (i in 1:nrow(tienda)) {
  
  # A. Evaluación de Prioridad de Compra basada en stock
  if (tienda$stock[i] == 0) {
    tienda$prioridad_compra[i] <- "CRÍTICA (Agotado)"
  } else if (tienda$stock[i] < 10) {
    tienda$prioridad_compra[i] <- "ALTA (Bajo stock)"
  } else if (tienda$stock[i] <= 50) {
    tienda$prioridad_compra[i] <- "MEDIA"
  } else {
    tienda$prioridad_compra[i] <- "BAJA (Sobrestock)"
  }
```


#### repeat y break, next

- La expresion **break** rompe un ciclo o un bloque
- La expresion **next** se salta el ciclo actual y continua con el que sigue

La sentencia **repeat** siempre necesita de **break**
```r
repeat{
  operaciones
  break
}
```

Ejemplo de **repeat, break**:
```r
num_real <- 0
repeat{
  num_real <- num_real / 2
  if(num_real > -4) {
    print("se va a romper el ciclo")
    break
  }
}
```

Ejemplo de **for, next**:
```r
vector_for1
vector11 <- c()
for(i in vector_for1) {
  if(i == 6) {
    next
  }
  vector11[i] <- vector_for1[i] * 2
}
vector11
```
