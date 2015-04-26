
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

#library(runjags)
library(shiny)
library(ggplot2)


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



shinyServer(function(input, output) {
   
  output$myPlot <- renderPlot({
    
      #print(input)
      dat <- mtcars
      colNr <- which(colnames(dat) == input$xAxis)
    
      plot <- ggplot(dat, 
                     aes(x=dat[,colNr], y=mpg, color=dat[,input$theColor]),
                     , environment = environment()) + 
                     geom_point() + 
                     ylab("Miles per Gallon")  +
                     xlab(mtDescription[colNr]) + 
                     ggtitle(paste("Fuel consumption vs", mtDescription[colNr])) +
                     labs(colour = mtDescription[which(colnames(dat) == input$theColor)])
        
      plot
      
    
  })
  
  output$inputDump <- renderText({ input$xAxis })
    
})

