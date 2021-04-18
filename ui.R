library(shiny)
example<-
shinyUI(fluidPage(
  titlePanel("My shiny APP"),
  sidebarLayout(                  
    sidebarPanel(
      h2("choose what you want to do"),
      br(),
      selectInput("select",label = h3("students"),
                              choices = c("Mary","Tom","Sam","Amy","John"),
                  selected = 1),
      radioButtons("factors",label = h3("factos"),
                   choices = c("height","weight","age"),
                   selected = 1),
    ), 
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Table", tableOutput("table")),
                  tabPanel("Summary", verbatimTextOutput("summary"))
                  )
    )
    
  )
))
