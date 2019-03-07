library(shiny)
library(mapview)
library(sp)

shinyServer(function(input, output, session) {
  
  data(meuse)
  coordinates(meuse) <- ~x+y
  proj4string(meuse) <- CRS("+init=epsg:28992")
  
  data(meuse.grid)
  coordinates(meuse.grid) <- ~x+y
  proj4string(meuse.grid) <- CRS("+init=epsg:28992")
  gridded(meuse.grid) <- TRUE
  
  m <- mapview(meuse.grid, zcol = "dist") + meuse
  
  output$mapplot <- renderLeaflet({
    m@map
  })
  
})