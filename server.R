# Preload shiny package, he 'WorldPhones' dataset, 
# ggplot2 and ggthemes package for graph and chart background 
library(shiny)
library(datasets)
library(ggplot2)
require(ggthemes)
# Change data.matrix to data.frame for ggplot2
WorldPhones <-as.data.frame(WorldPhones)
# Add a year variable for running glm model
WorldPhones$year <-c(1951,1956,1957,1958,1959,1960,1961)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$assignPlot <- renderPlot({
    # Render a qplot and theme form chart background
    q <-qplot(year,WorldPhones[,input$continent]/1000, data = WorldPhones, geom =c("point","smooth"),
          main= input$continent,
          ylab="Number of Telephones (millions)",
          xlab="Year") 
     q + theme_economist()
    })
})

