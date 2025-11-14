#################################
#3. Quiero asegurarme que para cualquier cadena, todo esté en minúsculas, excepto la primera letra.
# Ejemplo de uso:
cadena <- "esto es un eJempLo"
cadena <- tolower(cadena)
# Extrae la primera letra y la convierte a mayúscula
primera_letra <- toupper(substr(cadena, 1, 1))
# Extrae el resto de la cadena (desde la posición 2 hasta el final)
resto_cadena <- substr(cadena, 2, nchar(cadena))
paste0(primera_letra,resto_cadena)
help(paste0)
