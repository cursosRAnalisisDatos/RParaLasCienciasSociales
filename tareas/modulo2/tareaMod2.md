## Especificación de las actividades del módulo 2
### Nota. Se tiene que incluir en el mismo script que se desarrolló en la clase (modulo2.R), incluyendo comentarios dentro del código que diseñen.

### 1. Obtener el promedio del peso de 6 personas
  1.1. Crear 6 objetos numéricos
  1.2. Asociarles valores enteros positivos a cada uno
  1.3. Aplicar la fórmula de promedio
  1.4. Mostrar el resultado en la pantalla

```R
# 1.1. Crear seis objetos numéricos
peso1 <- 65
peso2 <- 72
peso3 <- 58
peso4 <- 80
peso5 <- 68
peso6 <- 75

# 1.2. Los valores enteros positivos representan
# el peso de cada persona en kilogramos.

# 1.3. Calcular el promedio
promedio <- (peso1 + peso2 + peso3 + peso4 + peso5 + peso6) / 6

# 1.4. Mostrar el resultado en pantalla
print(promedio)
```

### 2. Sabemos que el área de un círculo está dado por la fórmula
              ** A = pi*r^2 **
Si nos dan 3 círculos de radios r1=4cm, r2=8cm, y r3=20cm.

2.1. Calcular el área promedio de dichos círculos.
```R
r1 <- 4
r2 <- 8
r3 <- 20

# 2. Definir el valor de pi
pi <- 3.141592653589793

# 3. Calcular el área de cada círculo
area1 <- pi * r1^2
area2 <- pi * r2^2
area3 <- pi * r3^2

# 4. Calcular el área promedio
area_promedio <- (area1 + area2 + area3) / 3

# 5. Mostrar los resultados
print(area1)
print(area2)
print(area3)
print(area_promedio)
```


### 3. Cadenas de nombres propios.
3.1. Tenemos 3 cadenas que representan nombres de tres personas: MaurIcio, alfredo, Tania <br>
Crear un programa que tome esas cadenas y se asegure de convertirlas a un formato "correcto", es decir, al ser nombres propios queremos que unicamente la primer letra sea en mayúscula, de tal manera que queden como "Mauricio", "Alfredo", "Tania".<br>
Sólo se pueden usar las funciones vistas en el módulo 2. <br>
3.2. Investigar si existe una función que ya resuelva dicho problema.

```R

# 1. Crear tres objetos de tipo character
nombre1 <- "MaurIcio"
nombre2 <- "alfredo"
nombre3 <- "Tania"

# 2. Convertir todas las letras a minúsculas
nombre1 <- tolower(nombre1)
nombre2 <- tolower(nombre2)
nombre3 <- tolower(nombre3)

# 3. Obtener la primera letra de cada nombre
letra1 <- substr(nombre1, 1, 1)
letra2 <- substr(nombre2, 1, 1)
letra3 <- substr(nombre3, 1, 1)

# 4. Convertir la primera letra a mayúscula
letra1 <- toupper(letra1)
letra2 <- toupper(letra2)
letra3 <- toupper(letra3)

# 5. Obtener el resto de las letras
resto1 <- substr(nombre1, 2, nchar(nombre1))
resto2 <- substr(nombre2, 2, nchar(nombre2))
resto3 <- substr(nombre3, 2, nchar(nombre3))

# 6. Reconstruir los nombres
nombre1 <- paste0(letra1, resto1)
nombre2 <- paste0(letra2, resto2)
nombre3 <- paste0(letra3, resto3)

# 7. Mostrar los resultados
print(nombre1)
print(nombre2)
print(nombre3)
```

En R existe una función llamada tools::toTitleCase().
Esta función permite convertir una cadena de caracteres a un formato de título (Title Case).

```R

# Crear los nombres originales
nombre1 <- "MaurIcio"
nombre2 <- "alfredo"
nombre3 <- "Tania"

# Aplicar la función toTitleCase()
nombre1 <- tools::toTitleCase(tolower(nombre1))
nombre2 <- tools::toTitleCase(tolower(nombre2))
nombre3 <- tools::toTitleCase(tolower(nombre3))

# Mostrar resultados
print(nombre1)
print(nombre2)
print(nombre3)
```

