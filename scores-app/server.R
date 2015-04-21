library(shiny)
library(psych)
library(ggplot2)
library(magrittr)

# runs once when app is launched

sat.act %<>% mutate(gender = factor(gender),
                    education = factor(education),
                    age = cut(age, breaks = seq(min(age), max(age), 10)),
                    none  = "")

shinyServer(function(input, output) {
  
  # runs once each time user visits the app
  
  output$plot <- renderPlot({
    
    # runs each time a user changes a widget that output$plot relies on
    ggplot(sat.act, aes_string(x = input$x, y = input$y, color = input$split)) +
      geom_point() +
      geom_smooth(method = "lm", se = FALSE)
    
  })
  
})