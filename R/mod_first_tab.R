#' first_tab UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_first_tab_ui <- function(id){
  ns <- NS(id)
  tagList(
    tags$div(
      class = "overview",
      tags$div(
        class = "study-name",
        align = "top-center",
        h1("Test Study Name")
      )
    ),
    tags$div(
      class = "test-button",
      align = "center",
      actionButton(
        ns("plotVar"),
        "Plot"
      ),
      uiOutput(ns("test_out"))
    )
  )
}

# TODO Add reactivity.

#' first_tab Server Function
#'
#' @noRd 
mod_first_tab_server <- function(input, output, session, r){
  ns <- session$ns
  observeEvent( input$plotVar, {
    r$text <- shinipsum::random_text(
      nwords = 1000
    )
  })
  
  output$test_out <- renderUI({
    req(input$plotvar)
    tags$p(
      align = "center",
      sprintf(
        "This is a test %s \U0001f389",
        sample(100:1000, 1)
      )
    )
  })
}
    
## To be copied in the UI
# mod_first_tab_ui("first_tab_ui_1")
    
## To be copied in the server
# callModule(mod_first_tab_server, "first_tab_ui_1")
 
