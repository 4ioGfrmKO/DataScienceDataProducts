
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

mtDescription <- c("Miles/(US) gallon", 
                   "Number of cylinders", 
                   "Displacement (cu.in.)",
                   "Gross horsepower",
                   "Rear axle ratio",
                   "Weight (lb/1000)",
                   "1/4 mile time",
                   "V/S",
                   "Transmission (0 = automatic, 1 = manual)",
                   "Number of forward gears",
                   "Number of carburetors")

a <- ""

for (i in 1:ncol(mtcars)) {
  a <- paste(a, colnames(mtcars)[i], "-", mtDescription[i],"\n")
}


shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Visual data explorer for mtcars"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    p("Use the following dropdown boxes to change the variable used for the xAxis and the color of the plot.  "),
    selectInput("xAxis", "Choose feature for x axis:", 
                  choices = colnames(mtcars), selected = "wt"),
    
    selectInput("theColor", "Choose feature for color:", 
                choices = colnames(mtcars), selected = "cyl"),
    
    p("Variable descriptions"),
    pre(a)
    
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("myPlot", height="300px")
    #textOutput("inputDump")
    #plotOutput("shareDevelopment", height="300px")
    
  )
))
