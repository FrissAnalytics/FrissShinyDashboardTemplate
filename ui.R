shinyUI(
  dashboardPage(
    
    dashboardHeader(title = NULL, titleWidth = 188,
                    
      dropdownMenu(type = "messages",

        messageItem(
          from = "Support",
          message = "fraud suspect detected",
          icon = icon("exclamation-triangle"),
          time = "2015-aug-04"
        ),
        
        messageItem(
         from = "Support",
         message = "fraud network detected",
         icon = icon("life-ring"),
         time = "2015-aug-04"
        )
      )
    ),
    
    dashboardSidebar(
      
      sidebarSearchForm(label = "Enter a number", "searchText", "searchButton"),
      
      sidebarMenu(id = "tabs",
                  
        menuItem("Charts", icon = icon("bar-chart-o"),
                 
          menuSubItem("Sub-item 1", tabName = "subitem1", icon = icon("circle-o")),
          
          menuSubItem("Sub-item 2", tabName = "subitem2", icon = icon("circle-o"))
        ),
        
        menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
        
        menuItem("Widgets", icon = icon("th"), tabName = "widgets")
      )
    ),
    
    dashboardBody(FrissHeader(),

      tabItems(

        tabItem(tabName = "dashboard",
                
          fluidRow(
            
            box(plotOutput("plot1", height = 250),status = "warning"),
            
            box(
              title = "Controls",
              sliderInput("slider", "Number of observations:", 1, 100, 50)
            )
          )
        ),

        tabItem(tabName = "widgets",
                
                h2("Widgets tab content")
        )
      )
    )
  )
)

