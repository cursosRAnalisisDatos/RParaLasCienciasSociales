## Tema: Manejo de Datos

Objetivo: Trabajar con datos reales, en este caso del INEGI, y aplicar toda la exploración de métodos que hemos visto para un dataframe.

A partir de la información proporcionada por el **INEGI**<br>
https://www.inegi.org.mx/programas/ccpv/2020/?ps=microdatos

Hemos seleccionado 2 archivos.

A) Uno es un extracto del Censo-Personas-2020  (MuestraInegi-2020-personas.csv)<br>
https://www.inegi.org.mx/contenidos/programas/ccpv/2020/microdatos/Censo2020_CPV_CB_Personas_ejemplo_csv.zip

B) Otro es el archivo correspondiente a los municipios y sus claves  (MUN.csv)<br>
https://www.inegi.org.mx/contenidos/programas/ccpv/2020/microdatos/Censo2020_clasificaciones_CPV_csv.zip
(Archivo: MUN.csv)<br>

NOTA: Al ser un archivo real, puedes encontrar valores numéricos muy grandes, y el visualizador de RStudio los va a meter en un código para desplegarlos, si necesitas explorarlos, tal vez convenga usar otro editor de texto. También recuerda que si fuera necesario, puedes recortar estos valores quedándote con las cifras más significativas.<br>

A partir de ellos, da respuesta a las siguientes preguntas:
1. ¿Cuántas religiones hay?
2. Ordena los registros por edad, y luego por religión. (Opcional: Haz una selección de las columnas que creas pertinentes, eliminando aquellas que no estén aportando mucha información.)
3. ¿Cuántos registros hay de menores de edad? ¿Cuántos de mayores de edad?
4. ¿Cuántos municipios diferentes presentan estos registros?  Muestra tus registros ordenados alfabéticamente y no por la clave 
(Hint. Usa un merge con el archivo MUN.csv)
