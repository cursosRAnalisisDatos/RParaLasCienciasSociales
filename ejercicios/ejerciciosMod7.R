### Prerrequisitos: Tener cargado el dataframe: datosInegiConMunicipiosOrdenado
#

# -----------------------------------------------------------------------------------
# Ejercicio1: Tomando el ejemplo de Histogramas por Grupo, que agrupa por el Nombre de la 
# entidad ($NOM_ENT). Imítalo, y ahora agrupa por SEXO y vuelve a graficar

df <- data.frame(datosInegiConMunicipiosOrdenado, 
                 group = datosInegiConMunicipiosOrdenado$SEXO)
ggplot(df, aes(x = datosInegiConMunicipiosOrdenado$EDAD, 
               fill = datosInegiConMunicipiosOrdenado$SEXO)) + 
              geom_histogram()

# Cuál fué el resultado? hizo la agrupación que deseabas? por qué no?
# qué se tiene que cambiar?

# Lo que espera son valores de tipo cadena
class(datosInegiConMunicipiosOrdenado$NOM_ENT)

# y la columna SEXO es de tipo numerico
class(datosInegiConMunicipiosOrdenado$SEXO)

# Qué podemos hacer? Vamos a explorar los valores que tiene la columna SEXO
#1: 50
#3: 48
table(datosInegiConMunicipiosOrdenado$SEXO)

# Vamos a suponer que 1->"Hombre", 3->"Mujer"
# No vamos a eliminar la columna SEXO, lo que haremos es construir una nueva columna
# SEXO_CHAR que contenga: el valor "Hombre" por cada 1 y "Mujer" por cada 3.
# Cómo se hace eso?
# Recordando la sintáxis, if/else (del módulo 4)
resultado <- ifelse(c(3,4,5,6,7) < num_real, "condición-TRUE", "condición-FALSE")

# lo adaptamos a nuestras necesidades
resultado <- ifelse(datosInegiConMunicipiosOrdenado$SEXO == 1, "Hombre", "Mujer")

#corroboramos el resultado
table(resultado)

# lo agregamos como columna nueva a nuestro dataframe, usando la función "mutate"
# del módulo 5.
datosInegiConMunicipiosOrdenado <- datosInegiConMunicipiosOrdenado  %>%
  mutate(SEXO_CHAR = resultado)

# verificamos con un colnames() o un summary() o un table()
colnames(datosInegiConMunicipiosOrdenado)
summary(datosInegiConMunicipiosOrdenado)
table(datosInegiConMunicipiosOrdenado$SEXO_CHAR)

# ahora sí procedemos a preparar los datos para graficar
df <- data.frame(datosInegiConMunicipiosOrdenado, 
                 group = datosInegiConMunicipiosOrdenado$SEXO_CHAR)
ggplot(df, aes(x = datosInegiConMunicipiosOrdenado$EDAD, 
               fill = datosInegiConMunicipiosOrdenado$SEXO_CHAR)) + 
  geom_histogram()
