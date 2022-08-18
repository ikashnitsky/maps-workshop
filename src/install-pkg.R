# install packages

# First, install pacman to deal easier with other packages
# solution by Sacha Epskamp from: https://stackoverflow.com/a/9341833/4638884
if (!require('pacman', character.only = TRUE)) {
  install.packages('pacman', dep = TRUE)
  if (!require('pacman', character.only = TRUE))
    stop("Package not found")
}

pacman::p_load(
  install = T, # this will install all the packages we don't have
  update = F,  # we ask not to update the packages
  # main data management
  tidyverse,
  janitor,
  magrittr,
  lubridate,
  readxl,
  rio,
  xray,
  gsheet,
  # dataviz
  ggthemes,
  ggdark,
  paletteer,
  hrbrthemes,
  patchwork,
  cowplot,
  plotly,
  # data
  eurostat,
  # animation
  gganimate,
  gifski,
  # rspatial
  sf,
  rmapshaper,
  leaflet,
  tidygeocoder,
  maps,
  GADMTools
)

# unload all packages
pacman::p_loaded() %>% pacman::p_unload(char = .)
