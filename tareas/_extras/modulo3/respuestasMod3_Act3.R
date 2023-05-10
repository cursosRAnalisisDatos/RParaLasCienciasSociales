# Actividad 3. Correspondiente a "dataframe": Vamos a explorar un conjunto de datos!
# Instrucciones:
# Para cada pregunta, debe:
# a) incluir el código que usó para generar el resultado
# b) muestre el resultado en un comentario dentro del script

# Considere los datos DNase precargados en R.
#1. Dé un "vistazo" a estos datos
View(DNase)

#2. Muestre el nombre de las columnas
#[1] "Run"     "conc"    "density"
colnames(DNase)

#3. Cuántos registros tienen los datos
#176
nrow(DNase)

#4. ¿Qué valor tiene la variable "conc" para la observación correspondiente a la 
#cuadragésima quinta fila?
DNase[45,]$conc

#5. Crea un nuevo data frame a partir de los datos de DNase
nuevosDatos <- DNase

#6. Añade una nueva fila donde la variable Run tome el valor 5, 
#la variable conc tome el valor 0.5 y la variable density tome el valor 2.3.
nuevosDatos <- rbind(nuevosDatos, c(5, 0.5, 2.3))
nrow(nuevosDatos)# corroborando que sí se agrego el nuevo renglon

#7. ¿Qué valor tiene la media (redondeada a 4 cifras decimales) de los valores de 
#la variable "density", en los registros cuyo valor de la variable "Run" sea 5? 
# Hint: usa la función "round", usa el "help", para ver su documentación
datosParaLaMedia <- nuevosDatos[nuevosDatos$Run == 5, ]
nrow(datosParaLaMedia)# solo corroborando la cantidad de registros
datosParaLaMedia$density #seleccionando la columna adecuada
resultado <- mean(datosParaLaMedia$density) #usando la función de calculo de la media
help(round)
round(resultado, 4)
