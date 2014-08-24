# Preload shiny package
library(shiny)
# Call the 'WorldPhones' in the datasets
library(datasets)
# Define the overall UI
shinyUI(
    # Use a fluid Bootstrap layout
  fluidPage(    
      # Give the page a title
    titlePanel("Trend Lines of Telephones by Continent"),
        # Generate a row with a sidebar
    sidebarLayout(      
          # Define the sidebar with one input
      sidebarPanel(
        selectInput("continent", "Please select a continent:", 
                    choices=colnames(WorldPhones)),
        hr(),
        helpText("Adapted from Telephone by Region by Jeff Allen, jeff@rstudio") 
      ),
      
      # Create a spot for the qplot
      mainPanel(
        plotOutput("assignPlot")  
      )
      
    )
  )
)

