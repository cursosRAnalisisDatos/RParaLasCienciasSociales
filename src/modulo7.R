# 09 de Diciembre de 2022
#Sesion número7.
#@lunysska

class(datosInegiConMunicipios$ENT)

lapply(datosInegiConMunicipiosOrdenado, class)#

summary(datosInegiConMunicipiosOrdenado)

summary(datosInegiConMunicipiosOrdenado$EDAD)

table(datosInegiConMunicipiosOrdenado$NOM_ENT)

prop.table(table(datosInegiConMunicipiosOrdenado$NOM_ENT))

library(ggplot2)
colnames(datosInegiConMunicipiosOrdenado)
head(datosInegiConMunicipiosOrdenado)

pl <- ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD))
class(pl)

# se creo el grafico con particularidaddes parala partevisual
pl <- pl + geom_histogram(binwidth = 0.8, 
                    col="black", 
                    fill="green",
                    alpha=0.4)

# se creo las etiquetas
pl + labs( title = "CENSO INEGI 2020, Frecuencias Edad",
           x = "Columna Edad",
           y = "Conteos",
           subtitle = "Edad")

set.seed(3)
x1 <- rnorm(500)
x2 <- rnorm(500, mean = 3)
x <- c(x1, x2)
grupo <- c(rep("G1", 500), rep("G2", 500))
df <- data.frame(x, group = grupo)

colnames(df)
str(df)

head(df)

ggplot(df, aes(x = x, fill = grupo)) + 
  geom_histogram(position = "identity",
                 lwd = 0.75,
                 linetype = 1,
                 colour="black")


