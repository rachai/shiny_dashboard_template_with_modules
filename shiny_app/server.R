# Define server logic 
server <- function(input, output, session) {

  #Switch from panel 1 to panel 2 when button in panel 1 is clicked
  observeEvent(input$panel1_to_panel2, {
         updateTabsetPanel(session, "tabset1", selected = "Panel 2")
       })
  
  #Switch from panel 2 to panel 1 when button in panel 2 is clicked
  observeEvent(input$panel2_to_panel1, {
    updateTabsetPanel(session, "tabset1", selected = "Panel 1")
  })
  
  #Switch from panel 3 to panel 4 when button in panel 3 is clicked
  observeEvent(input$panel3_to_panel4, {
    updateTabsetPanel(session, "tabset2", selected = "Panel 4")
  })
  
  #Switch from panel 4 to panel 3 when button in panel 4 is clicked
  observeEvent(input$panel4_to_panel3, {
    updateTabsetPanel(session, "tabset2", selected = "Panel 3")
  })

  #Server code for panel 1 module
  callModule(tab1_item1_server, "tab1_item1")
  
  #Server code for panel 1 module
  callModule(tab1_item2_server, "tab1_item2")
  
  #Server code for panel 1 module
  callModule(tab2_item1_server, "tab2_item2")
  
  #Server code for panel 1 module
  callModule(tab2_item2_server, "tab2_item2")
  
}
  