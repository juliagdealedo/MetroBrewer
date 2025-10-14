library(ggplot2)
library(dplyr)

img <- "/Users/juliag.dealedo/ONE/UAM_Doctorado/github/MetroBrewer/PaletteImages/citymaps/chicago_prueba.png" |>
  readBin("raw", 1e6) |>
  png::readPNG()
  #jpeg::readJPEG()

plot(as.raster(img))
img_df <- data.frame(red = c(img[,,1]), green = c(img[,,2]), blue = c(img[,,3]))
km     <- kmeans(img_df, 20)
pal    <- do.call("rgb", as.data.frame(km$centers[order(-km$size),][1:20,]))
pal2=pal[-c(1:2)]
n_col=length(pal2)
df=data.frame(x = 1, y = rev(tail(sort(km$size), n_col)), fill = pal2)
df %>% filter(y<15000)

data.frame(x = 1, y = rev(tail(sort(km$size), n_col)), fill = pal2) |>
  dplyr::filter(y<1500) |>
  ggplot(aes(x, y, fill = fill)) +
  geom_col() +
  scale_fill_identity() +
  coord_polar(theta = "y") +
  theme_light()
