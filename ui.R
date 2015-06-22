library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  titlePanel("Estimating miles per gallon based on vehicles's specifications"),
  br(),
  br(),
  br(),
  
  sidebarLayout(
    sidebarPanel(
      
      selectInput("am", 
                  label = "Choose the transmission type",
                  choices = c("Automatic", "Manual"),
                  selected = "Automatic"),
      numericInput("wt",
                   label = "Enter the car's weigth (lb/1000)",
                   value = 3.2),
      numericInput("qsec", 
                   label = "Set the quarter mile time",
                   value = c(17.85)),
      actionButton("action","Estimate MPG"),
      br(),
      actionButton("carImg","An example car of type selected")
    ),
    
    mainPanel(
      h2("Entered Car specifications"),
      
      textOutput("text1"),
      textOutput("text2"),
      textOutput("text3"),
      
      h3(textOutput("text4")),
      h3(textOutput("text5")),
      uiOutput('cartype'),
      h1("User's help"),
      p("This application estimates a vehicle's mpg which is known to depend
        on "),
      p("1 - car's weigth (wt)"), 
      p("2 - quarter mile time (qsec)"), 
      p("3 - transmission type."),
      h2("How to use this application"),
      p("Enter the relevant information of your vehicle in the sidebar panel and press", span("Estimate MPG", style="color:blue"), "A text above the ", span("User's help", style="color:blue"),"will pop-up, telling the mpg estimate."),
      p("In order to view an example car of entered transmission type, press", span("An example car of type selected", style="color:blue"), "An image with title of a car with selected transmission type will appear.")
      
      )
  )
))