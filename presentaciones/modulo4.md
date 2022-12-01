## Módulo4. Estructuras de Control
### Flujo secuencial
- 1. Operacion 1
- 2. Operacion 2
- 3. Operacion 3
- ....

### Condicionales
#### if/else
<pre><code>
if(condición) {
  operaciones_si_condición=TRUE
} else {
  operaciones_si_condición=FALSE
}

euros <- -20
if (euros < 0){
  print("Estás en números negativos")
}
</code></pre>

#### Condicionales anidadas: if/else,if/else
<pre><code>
if(condición1) {
  operaciones_si_condición=TRUE
} else if(condición2) {
  operaciones_si_condición1=FALSE_condición2=TRUE
} else { 
operaciones_si_condiciones=FALSE
}
</code></pre>

Ejemplo
<pre><code>
num_real <- 5.43
num_entero <- -10
if(num_real < num_entero) {
  "condición1-TRUE"
} else if(num_real > num_entero & num_real > 0) {
  "condición2-TRUE"
} else {
  "condiciones-FALSE"
}
</code></pre>

#### Condicionales aplicadas a un vector
<pre><code>
resultado <- ifelse(c(3,4,5,6,7) < num_real, "condición-TRUE", "condición-FALSE")
</code></pre>

### Ciclos 
####for
<pre><code>
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
</code></pre>

#### repeat y break, next

- La expresion **break** rompe un ciclo o un bloque
- La expresion **next** se salta el ciclo actual y continua con el que sigue

La sentencia **repeat** siempre necesita de **break**
<pre><code>
repeat{
  operaciones
  break
}
</code></pre>

Ejemplo de **repeat, break**:
<pre><code>
num_real <- 0
repeat{
  num_real <- num_real / 2
  if(num_real > -4) {
    print("se va a romper el ciclo")
    break
  }
}
</code></pre>

Ejemplo de **for, next**:
<pre><code>
vector_for1
vector11 <- c()
for(i in vector_for1) {
  if(i == 6) {
    next
  }
  vector11[i] <- vector_for1[i] * 2
}
vector11
</code></pre>

