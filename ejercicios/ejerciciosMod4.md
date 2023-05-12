
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
print("Ingrese un número entre 0 y 100: ")
suma <- 0
n <- scan(n=1) # acá lee la opción tecleada por el usuario! 
while (n <= 100){
  suma <- suma+n
  n <- n+1
}
cat("El valor de la suma de enteros hasta 100 es", suma)
</code></pre>

3. Modifique el **ejercicio 2** de forma que ignore el **valor 50** y finalice el programa si la suma supera el valor **2000**

Respuesta:
<pre><code>
print("Indique un número entre 0 y 100: ")
suma <- 0
n <- scan(n=1)
for(i in n:100){
  if(i==50){
    next
  }
  if(suma>2000){
    break
  }
  suma <- suma + i
}
cat("El valor de la suma de enteros hasta que supera por primera vez el valor 2000 es", suma)
</code></pre>
