shinyUI(
  fluidPage(
    titlePanel("Standardized Test Scores"),
    
    sidebarLayout(
      sidebarPanel(
        selectInput("x",
                    label = "x-axis",
                    choices = c("ACT", "SATV", "SATQ"),
                    selected = "SATV"),
        selectInput("y",
                    label = "y-axis",
                    choices = c("ACT", "SATV", "SATQ"),
                    selected = "SATQ"),
        selectInput("split",
                    label = "split",
                    choices = c("none", "gender", "education", "age"),
                    selected = "none")
      ),
      
      mainPanel(plotOutput("plot"))
    )
  )
)