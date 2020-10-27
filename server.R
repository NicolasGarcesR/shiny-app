#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({
        numer <-input$numeric
        numer2 <- input$two
        data1 <- filter(mtcars, mpg<= numer & wt<= numer2 )
        plot(data1$mpg, data1$wt,col="blue" ,xlim =c(9,34), ylim =c(0,6), ylab= "WT", xlab = "MPG")
        abline(lsfit(data1$mpg,data1$wt),col="red")
})

    })

