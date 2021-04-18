library("readxl")
library("shiny")
shinyServer(function(input,output){ 
  example<-read.csv("D:/shinyfiles/APP-1/data/example.csv")
  head(example)
  output$text<-renderText({
    "Here is the result."
  })
  datasetInput <- reactive({
    switch(input$select,
           "Mary"="Mary",
           "Tom"="Tom",
           "Sam"="Sam",
           "Amy"="Amy",
           "John"="John")
  })
  factorsInput <- reactive({
    switch(input$factors,
           "height"="height",
           "weight"="weight",
           "age"="age")
  })
  
 output$table <- renderTable({
    head(datasetInput())
  }) 
 output$summary <- renderPrint({
   factors<-factorsInput()
   summary(factors)
 })
 
})
