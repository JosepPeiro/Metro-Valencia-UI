library(shiny)
library(shinyjs)
library(leaflet)

#Ejecuta el fichero con los esteticos
source("../Esteticos.R", encoding = 'UTF-8', echo=TRUE)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        useShinyjs(),
        # Columna izquierda
        column(width = 8,
               h3("Columna Izquierda"),
               leafletOutput("mapa", height = "700px")
        ),
        
        # Columna derecha
        column(width = 4,
               h3("Columna Derecha"),
              style = backgroundDerecha,
              textOutput("porcentaje_num"),
              plotOutput('porcentaje',height = "100px", width = "100%"),
              textInput('estacion', '', placeholder = 'Estació'),
              tags$style(HTML(htmltextinput)),
              plotOutput("encontradas")
        )
))
