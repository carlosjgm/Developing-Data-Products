library(shiny)

shinyUI(fluidPage(  
    titlePanel("Effect of sample size on inference"),
    sidebarLayout(
      sidebarPanel("A bag contains 100 colored balls. There are 40 red, 10 blue and 50 green balls.",br(),br(),
                   "Select several sample sizes (number of balls to be blindly taken from the bag)
                   to observe their effect on the estimation of the proportion of red balls.",
                   sliderInput("sz","",min = 5,max = 100,value = 50,step=5),
                   br(),br(),"Notice how the estimated values approach the real value of 40 as
                   the sample size increases."),
      mainPanel(plotOutput("histPlot"))
    )
))
