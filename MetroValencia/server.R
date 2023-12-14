library(shiny)

shinyServer(function(input, output){
  estaciones_intro <- reactiveValues(est = c())
  
  observe({
    # Detectar el evento de pulsación de tecla "Enter"
    runjs(intro_json)
  })
  
  observeEvent(input$input_enter, {
    # Agregar el valor al vector
    estaciones_intro$est <- c(estaciones_intro$est, input$input_enter)
  })
  
  output$porcentaje_num <- renderText({
    # Mostrar el vector de valores
    paste("Valores ingresados:", paste(estaciones_intro$est, collapse = ", "))
  })
  
  porcentaje_react <- reactive({tot_prct(aciertos)})

  #output$porcentaje_num <- renderText(input$estacion)
  #output$porcentaje_num <- renderText("Aqui hay que poner lo de la funcion de % de estaciones, y tendriamos que hacer un reactivo antes, y entonces ponerlo en el renderText")

  output$mapa<-renderLeaflet({
    mapa_estaciones
  })
    
    
    
    
    
})