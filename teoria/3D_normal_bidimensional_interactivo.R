library(tidyverse)
library(plotly)
library(bivariate)
f = nbvpdf (0, 0, 1, 1, 0.5)
seq=seq(-4,4,0.01)
n=length(seq)
x=rep(seq(-4,4,0.01),times=n)
y=rep(seq(-4,4,0.01),each=n)
z=matrix(f(x,y),ncol=n)
df_list=list(x=seq,y=seq,z=z)
# volcano is a numeric matrix that ships with R
fig <- plot_ly(x=df_list$x,y=df_list$y,z=df_list$z) %>% add_surface(
  contours = list(
    z = list(
      show=TRUE,
      usecolormap=TRUE,
      highlightcolor="#ff0000",
      project=list(z=TRUE)
    )
  )
)
fig <- fig %>% layout(
  scene = list(
    camera=list(
      eye = list(x=1.87, y=0.88, z=-0.64)
    )
  )
)

fig
