## Tema: Estructuras de control.
### Objetivo: 
Practicar la creación de secuencias, el uso de ciclos y de expresión "break" y de lectura de teclado.

### Actividad 1: 
Cree un script que permita jugar a adivinar un número aleatorio del 1 al 10.
Hint: Use la función "sample" y use "help(sample)" para ver bien cómo funciona

### Actividad 2:
**Contexto: Control de Calidad en Lotes de Medicamentos**
Una farmacéutica produce jarabes en lotes. Cada lote pasa por un sensor de 
temperatura (en °C). Si la temperatura supera los 25°C, el lote se echa a perder 
y **toda la producción del día debe detenerse** para calibrar las máquinas.

**Instrucciones para el alumno:**
1. Copia el DataFrame de entrada en tu script.
2. Crea un bucle `for` que revise las temperaturas una por una.
3. Si la temperatura es menor o igual a 25, imprime: `"Lote [Número]: Temperatura correcta ([X]°C)"`.
4. Si la temperatura supera los 25°C, imprime un mensaje de **parada de emergencia** indicando el número de lote afectado y ejecuta un `break`.

**DataFrame de entrada para la tarea:**
```R
lotes_produccion <- data.frame(
  Lote = 101:106,
  Temperatura = c(22.4, 23.1, 21.8, 26.5, 22.0, 23.5) # El lote 104 arruinará el proceso
)
```

### 🗝️ Solución de la Tarea
```R
cat("--- Iniciando Monitoreo de Temperatura ---\n\n")

for (i in 1:nrow(lotes_produccion)) {
  
  # Validar condición de parada (Temperatura mayor a 25)
  if (lotes_produccion$Temperatura[i] > 25) {
    cat("🚨 PARADA DE EMERGENCIA: Lote ", lotes_produccion$Lote[i], 
        " alcanzó los ", lotes_produccion$Temperatura[i], "°C. Apagando sensores.\n", sep="")
    break
  }
  
  # Mensaje si todo está bajo control
  cat("Lote ", lotes_produccion$Lote[i], ": Temperatura correcta (", 
      lotes_produccion$Temperatura[i], "°C)\n", sep="")
}

cat("\n--- Monitoreo Terminado ---\n")
```
---

## 💡 Pregunta de Refuerzo para la Siguiente Clase
Cuando revises la tarea, hazles la siguiente pregunta capciosa:
*"¿Por qué el Lote 105 y 106 tenían temperaturas correctas pero no aparecen en el reporte final?"*

**Respuesta esperada:** Porque el `break` no salta elementos aislados, sino que **mata el bucle por completo** en el instante en que se ejecuta la línea.
