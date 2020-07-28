tab2_item1_ui <- function(id){
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

tab2_item1_server <- function(input, output, session){}
