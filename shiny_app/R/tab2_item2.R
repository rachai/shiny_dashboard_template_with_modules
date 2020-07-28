tab2_item2_ui <- function(id){
  ns <- NS(id)
  
  tagList(

      fluidRow(
        box(
          title = "Content box",
          status = "primary",
          solidHeader = TRUE,
          width = 4
        )
      )
    )

  
}

tab2_item2_server <- function(input, output, session){}
