library(ggplot2)

## here
# todo lo que respecta a la manipulación
#
##



colnames(datosInegiConMunicipiosOrdenado)

datosInegiConMunicipiosOrdenado <- cbind(datosInegiConMunicipiosOrdenado,
                                         grupoSexo = ifelse(datosInegiConMunicipiosOrdenado$SEXO <= 1, "HOMBRE","MUJER"))

ggplot(datosInegiConMunicipiosOrdenado, 
       aes(x = EDAD, fill=grupoSexo)) + geom_histogram()

ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill=grupoSexo)) + 
  geom_histogram(color="#e9ecef", alpha=0.6, position = "identity") +
  scale_fill_manual(values=c("#69b3a2", "#404080")) + #cambiamos los colores de manera manual
  theme_gray() + 
  labs(fill="")

ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill = grupoSexo)) +
  geom_histogram(color = 'white') +
  facet_wrap(~grupoSexo, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  labs(title = 'Inegi',
       subtitle = 'Histogram by sexo')


ggplot(datosInegiConMunicipios, aes(x = EDAD)) +
  geom_density()

ggplot(datosInegiConMunicipiosOrdenado, 
       aes(x = EDAD, fill = grupoSexo)) +
        geom_density(alpha = 0.4)


ggplot(datosInegiConMunicipiosOrdenado, aes(x = EDAD, fill = grupoSexo)) +
  geom_density(alpha = 0.4) +
  facet_wrap(~grupoSexo, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  labs(title = 'Inegi',
       subtitle = 'Density Plot by SEXO')


ggplot(datosInegiConMunicipiosOrdenado, aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
  geom_boxplot()

unique( datosInegiConMunicipiosOrdenado$ESCOLARI)
ggplot(datosInegiConMunicipiosOrdenado, aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
  geom_boxplot() +
  facet_wrap(~ESCOLARI, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  labs(title = 'Dataset Inegi',
       subtitle = 'Box Plot by sexo and by escolaridad')


ggplot(datosInegiConMunicipiosOrdenado, aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
  geom_boxplot(alpha = 0.6) +
  facet_wrap(~ESCOLARI, scales = 'free', nrow = 2) +
  theme(legend.position = 'none') +
  stat_summary(fun=mean, geom = "point", shape = 16, size = 1, color="red", fill = "red") +
  labs(title = 'Dataset Inegi',
       subtitle = 'Box Plot by sexo and by escolaridad')


ggplot(datosInegiConMunicipiosOrdenado, 
       aes(y = EDAD, x = grupoSexo, fill = grupoSexo)) +
       geom_violin()
