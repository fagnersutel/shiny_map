library(shiny)
library(shinydashboard)
library(mapview)

header <- dashboardHeader(title="Ardusky")

sidebar <- dashboardSidebar(
)

body <- dashboardBody(
  # Define UI for application
  fluidPage(
    mainPanel(
      leafletOutput("mapplot"),
      mapview:::plainViewOutput("test")
    ))
)

ui <- dashboardPage(header, sidebar, body, skin="black")