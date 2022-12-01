
## Ejercicios Módulo 4

- 1. Cree el código que indique si el número introducido es superior, inferior, o igual a 0.

Respuesta
Tip: explore en la ayuda el método **scan** y **cat**
<pre><code>
print ("Número que desea conocer cómo es respecto a 0: ")
num <- scan(n=1)
if (num==0) {
  cat(num, "es igual a 0.")
} else if (num<0) {
  cat(num, "es menor que 0.")
} else {
  cat(num, "es mayor que 0.")
}
</code></pre>
