
head(mtcars)

#Del dataframe mtcars,

#Ejercicio 1. Sobre "select". Enfocado más hacia las columnas
# ---------------------------------------------------------------------

# Extraiga sólo la columnas: mpg, disp
#1.1) Primero por índices
head( select(mtcars, 1, 3) )

# 1.2) Por nombre de columnas
head( select(mtcars, mpg, disp) )

# 1.3) Ahora el proceso inverso, selecciona todas menos "mpg" y "disp".
# Hint: Recuerda el operador "-" junto con "select"
head( select(mtcars, -c(mpg, disp)) )

# 1.4) Selecciona las primeras tres columnas
head( select(mtcars, 1:3) )
head( select(mpg:disp) )

# 1.5) Selecciona todas las columnas que comiencen con "c"
# Hint: usa la función "starts_with"
head( select(mtcars, starts_with("c")))

# 1.6) Selecciona todas las columnas que terminen con "t"
# Hint: usa la función "end_with"
head( select(mtcars, ends_with("t")))

# 1.7) Selecciona las columnas que posean la cadena "ar"
# Hint: usa la función "contains"
head( select(mtcars, contains("ar")))

# 1.8) Coloca en primer lugar la variable "disp", luego "carb" y luego las que restan
# Hint: usa la función "everything" para darle orden a las columnas
head( select(mtcars, disp, carb, everything()))

# 1.9) Selecciona las columnas "disp" y "carb"
# Hint: usa la función "one_of" para elegir columnas que no necesariamente están contiguas
vars <- c("disp", "carb")
head( select(mtcars, one_of(vars)))

#Ejercicio 2. Sobre "filter". Enfocado más hacia los registros
# ---------------------------------------------------------------------

# 2.1) Extraer los automóviles que poseen 4 cilindros y más de 100 hp de potencia.
filter(mtcars, cyl == 4 & hp > 100)

#Ejercicio 3. Sobre "arrange". Para ordenar por una o más columnas
# ---------------------------------------------------------------------

# 3.1) Reordena "mtcars" por la variable "mpg"
arrange(mtcars, mpg)

# 3.2) Ordene primero por la columna "hp" en orden ascendente, y luego por "mpg" en forma descendente.  
arrange(mtcars, hp, desc(mpg))

#Ejercicio 4. Sobre "rename". Para modificar el nombre de una columna
# 4.1) Modifique el nombre de la columna "mpg" por "MPG"
head( rename(mtcars, MPG = mpg ))

#Ejercicio 5. Sobre "mutate". Realizar transformaciones sobre variables.
# 5.1) Convertir la variable hp (Horse Power) a cv (caballos de vapor). 
head( mutate(mtcars, cv = hp * 0.9863) )

#Ejercicio 6. group_by y summarize. La primera ess usada para agrupar datos según una variable. 
#Una vez con los datos agrupados podemos summarize para resumir estos utilizando una función de agregación.

# 6.1) Cuál es el valor medio de mpg y hp para los vehículos acorde a su cantidad de cilindros.
by_cyl <- group_by(mtcars, cyl)
summarise(by_cyl, mean(mpg), mean(hp))
