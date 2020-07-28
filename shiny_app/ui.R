#Define header
header <- dashboardHeader(title = "App title")

#Define sidebar
sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Menu item 1", tabName = "tab1"),
        menuItem("Menu item 2", tabName = "tab2")
    )
)

#Define body
body <- dashboardBody(
    
    tags$head(tags$style("section.content { overflow-y: hidden; }")),
    
    tabItems(#Body for sidebar menu item 1
        tabItem(
            tabName = "tab1",
            tabBox(
                width = 12,
                title = "",
                id = "tabset1",
                
                #Panel 1
                tabPanel(title = "Panel 1",
                         fluidRow(column(
                             width = 4,
                             actionButton(
                                 inputId = "panel1_to_panel2",
                                 label = "To Panel 2",
                                 class = "btn-lg btn-warning",
                                 style = "color: #FFF"
                             )
                         )),
                         
                         br(),
                         
                         tab1_item1_ui("tab1_item1")),
                
                #Panel 2
                tabPanel(title = "Panel 2",
                         fluidRow(column(
                             width = 4,
                             actionButton(
                                 inputId = "panel2_to_panel1",
                                 label = "To Panel 1",
                                 class = "btn-lg btn-warning",
                                 style = "color: #FFF"
                             )
                         )),
                         
                         br(),
                         
                         tab1_item2_ui("tab1_item2"))
            )
        ),
        
        #Body for sidebar menu item 2
        tabItem(
            tabName = "tab2",
            tabBox(
                width = 12,
                title = "",
                id = "tabset2",
                
                #Panel 3
                tabPanel(title = "Panel 3",
                         fluidRow(column(
                             width = 4,
                             actionButton(
                                 inputId = "panel3_to_panel4",
                                 label = "To Panel 4",
                                 class = "btn-lg btn-warning",
                                 style = "color: #FFF"
                             )
                         )),
                         
                         br(),
                         
                         tab2_item1_ui("tab2_item1")),
                
                #Panel 4
                tabPanel(title = "Panel 4",
                         fluidRow(column(
                             width = 4,
                             actionButton(
                                 inputId = "panel4_to_panel3",
                                 label = "To Panel 3",
                                 class = "btn-lg btn-warning",
                                 style = "color: #FFF"
                             )
                         )),
                         
                         br(),
                         
                         tab2_item2_ui("tab2_item2"))
            )
        ))
)

#Create ui    
ui <- dashboardPage(header, sidebar, body)
