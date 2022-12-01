
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

Respuesta
print("Ingrese un número entre 0 y 100: ")
suma <- 0
n <- scan(n=1)
while (n <= 100){
  suma <- suma+n
  n <- n+1
}
<pre><code>
cat("El valor de la suma de enteros hasta 100 es", suma)
</code></pre>
