
## Módulo5. Manejo de Datos

La generación constante de información conlleva a adentrarse a diferentes formatos donde radican resultados de diferentes estudios, aplicaciones, investigaciones, 

### Formatos de archivos

Entre ellos pueden ser:

- archivos CSV
- archivos Excel
- archivos de Stata
- archivos PDF
- XML y sus variantes
- etc

pero las necesidades de publicar resultados conllevan a también generar resultados en diferentes formatos

### Lugares donde residen datos de lectura

  Las variantes son muy amplias, acá intentamos destacar las más comunes.
  
  - datos ya existentes en R, ejemplos: Iris, cars, mtcars, etc.

  [Una lista ya generada de todos los paquetes en R, versión 4.3 ](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html)

  Para conocerlos todos, basta con usar:
  <pre><code>
  library(help = "datasets")
  </code></pre>
  
 - en el repositorio de R (**CRAN** - Comprehensive R Archive Network -)
 
  [*importinegi*](https://rde.inegi.org.mx/index.php/2020/12/02/importinegi-un-paquete-de-r-para-descargar-y-gestionar-bases-de-datos-del-inegi/)
   <pre><code>
    install.packages("importinegi")
   </code></pre>
  
 - **git-hub**
   <pre><code>
   devtools::install_github("crenteriam/importinegi")
   </code></pre>
 
 - **Bioconductor**
  [http://bioconductor.org/packages/release/bioc/](http://bioconductor.org/packages/release/bioc/)
 
 
