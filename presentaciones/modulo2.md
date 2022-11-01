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

## Módulo 2: Operaciones y funciones básicas con R

##
así va el scrip para este módulo (src/modulo2.R)
##
En R contamos con varias funciones de ayuda que nos permiten entrar a la documentación de las funciones, bases de datos y otros objetos ya sean parte de la instalación estándar como de los paquetes extras, entre ellas podemos enlistar las siguientes: 

### Funciones de ayuda
<pre><code>
help() 
</code></pre>

R tiene documentación integrada en el entorno de desarrollo. Para obtener ayuda de una función puedes usar las funciones 
<pre><code>
help o ?
</code></pre>

##

Se usa como:
<pre><code>
?nombre_de_funcion, help(nombre_de_funcion)
</code></pre>

Ejemplo: la distribución normal

<pre><code>
  help(rnorm)
  ?rnorm
</code></pre>

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
getwd() # para conocer el directorio de trabajo
setwd("C:\otro_directorio") #para modificar el directorio de trabajo
</code></pre>
