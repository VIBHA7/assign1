
#TREND LINE OF TELEPHONE BY CONTINENT


This is an Shiny application, adapted from the "Telephone by Region by Jeff Allen" gallery on 
http://shiny.rstudio.com/gallery/telephones-by-region.html. "Trend line of telephone by continent" adds a trend line based upon generalized least sauare modle (glm) to illustrate patterns of growth on different continents. The trend lines indicate their extent, volatility and speed of growth.  

##Components of Application
The application consists of two files-ui.R and server.R

###User interface file: ui.R
Firstly, the input data or WorldPhones is reloaded from library(datasets). WorldPhones comprise a datamatrix of seven continents' telephone trend. Each of the tremd by a continent is specified as a input variable or response. 

For input interface, the ui.R chooses a function of fluidPage for allowing users to select only one of seven continents each time, when they wish to see its trend line. The input interface of the application appears a closed system; users cannot put any numberic as a input. 

And an output of the input interface is ploted by as a trend chart.

###Controlling sever file: server.R
In addition to library(shiny) and library(datasets), a ggplot2 package is employed to plot each trend chart, ggthemes is required to a background of charts. Nevertheless WorldPhones with  datamatrix cannot be used in ggplot2. The datamatrix must be changed into dataframe before using a qplot function. Also, a year variable is added for running each trend regression model. 

The continent variable as a input of the server.R is passed to fit a trend model of each continent. The year variable become x, a indepent variable of the model. The generalized least square (glm) is applied for building a trend line of non-linear regression.

As a result, a chart of trend line  in each continent is rendered by qplot function as a output of the server.R file.


##Interpretations of Chart

A steep trend line of the chart could imply a fast speed of telephone growth in the continent. On the contrary, a flat trend line of the chart would illustrate a slow seed of telephone growth in the continent.

A wide shadow around the trend line indicates a high volatilty of telephone growth in the continent. Whereas a shallow shadow shows a low volatilty of telephone growth in the continent.


