library(shiny)

# runs once when app is launched

shinyServer(function(input, output) {
  
  # runs once each time user visits the app
  
  output$plot <- renderPlot({
    
    # runs each time a user changes a widget that output$plot relies on
    
  })
  
})