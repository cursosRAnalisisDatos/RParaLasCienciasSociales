---
title: "Introducción a R para las Ciencias Sociales"
author: 
- "Dr. Eric Hernández Ramírez"
- "Lic. en C. C. Virginia Teodosio Procopio"
- "Fís. Octavio Eduardo Vizcaya Xilotl"
date: "`r Sys.Date()`"
output: ioslides_presentation
logo: logoIIEc.jpg
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```
## Módulo 2: Operaciones y funciones básicas con R
En R contamos con varias funciones de ayuda que nos permiten entrar a la documentación de las funciones, bases de datos y otros objetos ya sean parte de la instalación estándar como de los paquetes extras, entre ellas podemos enlistar las siguientes: 

### Funciones de ayuda
- help() 

R tiene documentación integrada en el entorno de desarrollo. Para obtener ayuda de una función puedes usar las funciones 

help o ?

##

Se usa como:

?nombre_de_funcion, help(nombre_de_funcion)

Ejemplo: la distribución normal

  > help(rnorm)
  
  > ?rnorm

Esto cargará una página de ayuda en RStudio (o como texto sin formato en R por sí mismo).

##

Cada página de ayuda se divide en secciones:

  - Descripción: una descripción extendida de lo que hace la función.
  - Uso: los argumentos de la función y sus valores predeterminados.
  - Argumentos: una explicación de los datos que espera cada argumento.
  - Detalles: cualquier detalle importante a tener en cuenta
  - Valor: los datos que regresa la función
  - Ver también: cualquier función relacionada que pueda serte útil.
  - Ejemplos: algunos ejemplos de cómo usar la función

## Favor de teclear  
<pre><code>
 help.start()
</code></pre>

## Los directorios de trabajo

<pre><code>
getwd()

setwd("C:\otro_directorio")

</code></pre>
