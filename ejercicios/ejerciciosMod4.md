
## Ejercicios Módulo 4

1. Cree el código que indique si el número introducido es superior, inferior, o igual a 0.

Respuesta

Tip: explore en la ayuda el método **scan** y **cat**
<pre><code>
print ("Introduzca el número que desea conocer cómo es respecto a 0: ")
num <- scan(n=1)
if (num==0) {
  cat(num, "es igual a 0.")
} else if (num<0) {
  cat(num, "es menor que 0.")
} else {
  cat(num, "es mayor que 0.")
}
</code></pre>

2. Cree el código en **R** que realice la suma de los números enteros comprendidos entre el número indicado y 100.
Hint: para leer del teclado, la opción del usuario, use la función "scan" (help(scan))

Respuesta:
<pre><code>
suma <- 0
print("Ingrese un número entre 0 y 100: ")
n <- scan(n=1) # acá lee la opción tecleada por el usuario! 
while (n <= 100){
  suma <- suma+n
  n <- n+1
}
cat("El valor de la suma de enteros hasta 100 es", suma)
</code></pre>

3. Tienes un DataFrame con el inventario de una tienda de tecnología. Quieres calcular el valor total del inventario (Precio × Stock).
   Sin embargo, si encuentras un producto que tiene `Stock = 0`, el sistema debe **detenerse inmediatamente** e imprimir un mensaje de advertencia indicando qué producto causó la parada, ya que no se pueden calcular métricas con datos faltantes.

**Datos iniciales:**
```R
inventario <- data.frame(
  Producto = c("Laptop", "Mouse", "Teclado", "Monitor", "Audífonos"),
  Precio = c(800, 25, 45, 300, 60),
  Stock = c(10, 50, 0, 15, 30), # El Teclado detendrá el código
  stringsAsFactors = FALSE
)

total_acumulado <- 0

# TU TURNO: Escribe el bucle 'for' que recorra las filas,
# sume el (Precio * Stock) al total_acumulado,
# y use un 'break' si el Stock es igual a 0.
```
SOLUCIÓN
```R
for (i in 1:nrow(inventario)) {
  
  # Validar si hay stock cero
  if (inventario$Stock[i] == 0) {
    cat("⚠️ ERROR: El producto '", inventario$Producto[i], "' tiene stock 0. Cálculo detenido.\n", sep="")
    break
  }
  
  # Calcular el valor de la fila y sumarlo al total
  valor_producto <- inventario$Precio[i] * inventario$Stock[i]
  total_acumulado <- total_acumulado + valor_producto
  
  cat("Subtotal acumulado hasta ", inventario$Producto[i], ": $", total_acumulado, "\n", sep="")
}

cat("\nValor total calculado del inventario: $", total_acumulado, "\n", sep="")
```
