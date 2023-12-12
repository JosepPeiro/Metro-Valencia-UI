library(shiny)

shinyServer(function(input, output) {
    output$porcentaje_num <- renderText("Aqui hay que poner lo de la funcion de % de estaciones, y tendriamos que hacer un reactivo antes, y entonces ponerlo en el renderText")

    output$mapa<-renderLeaflet({
      mapa_estaciones
    })
    
    
    
    
    
    })