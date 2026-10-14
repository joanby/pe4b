# Cambios de la rama `update-2026`

> Esta rama es el mismo curso —Probabilidad y Estadística aplicada a Negocios y Empresas—, con el código
> adaptado a R y los paquetes de hoy (R 4.5.3, rmarkdown 2.32, knitr 1.52; octubre de 2026). La rama principal
> sigue exactamente como en el vídeo.

> **Cómo se ha comprobado.** Se han renderizado los documentos del curso (`.Rmd` de teoría y problemas) y
> ejecutado sus scripts línea a línea, como en RStudio, dos veces: con R y paquetes de finales de 2019 y con los
> de hoy. Lo que solo fallaba hoy se ha arreglado: **54 de 58 funcionan** y no queda nada que funcionara entonces y
> falle hoy.
> **No comprobados:** los problemas finales de contraste de hipótesis (`problemas_finales_enunciados.Rmd` y
> `_soluciones.Rmd`) descargan los datos de la web del NIST, que no era accesible desde el entorno de prueba; y
> `Tema_4_VA_Continuas_multidimensionales.Rmd` y `3D_normal_bidimensional_interactivo.R` usan el paquete
> `bivariate`, que no estaba disponible en el entorno de prueba (se instala desde CRAN con
> `install.packages("bivariate")`).

## Qué ha cambiado y por qué

- **knitr comprueba que existen las imágenes** de `knitr::include_graphics()`. En las soluciones de variables
  aleatorias continuas (`10VAContinuasSoluciones.Rmd`) se pedía `pro1_cont_1.PNG` y `pro2_cont_1.PNG`, y los
  ficheros se llaman `.png`: en Mac y Windows da igual mayúsculas que minúsculas, en Linux no, y el knitr de
  entonces no lo comprobaba. Ahora es `.png`.
- **knitr:** un `` `r t.test(...)` `` dentro del texto escribía el objeto entero del contraste; hoy da error. En el
  taller 2 de contraste de hipótesis la frase habla del p-valor, así que ahora es `` `r t.test(...)$p.value` ``.

## Para generar los documentos

Las presentaciones del tema 4 (`Tema_4_VA_Continuas.Rmd`, `Tema_4_bis_VA_Continuas_Cuantiles.Rmd`) son
interactivas (`runtime: shiny`): en RStudio se abren con **Run Document**, no con *Knit*.
