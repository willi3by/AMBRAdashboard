#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  r <- reactiveValues(
    text = shinipsum::random_text(nwords = 1000)
  )
  callModule(mod_first_tab_server, "first_tab_ui_1", r)
}
