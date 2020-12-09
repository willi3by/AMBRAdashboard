library(shiny)
library(magrittr)

ui <- function() {
  fluidPage(
    tags$script(src = 'script.js')
      )
}

server <- function(input, output, session){
  
  
  
}

shinyApp(ui, server)