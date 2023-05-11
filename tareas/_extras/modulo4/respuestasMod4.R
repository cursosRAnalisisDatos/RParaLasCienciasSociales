# Respuesta. Actividad del módulo 4

secreto <- sample(1:10,1)
found <- TRUE            
while(found){
  print("Prueba un número: ")
  n <- scan(n=1)
  if (n<secreto) {
    print("El numero que has pensado es mayor")
  } else {
    print ("El numero que has pensado es menor")
  }
  if (n==secreto){
    print("¡ACERTASTE!")
    break
  }
}
