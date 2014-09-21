library(shiny)

shinyServer(function(input, output) {  
  output$histPlot <- renderPlot({
    y <- array()
    for(i in 1:1000){
      x <- sample(1:100,input$sz,rep=F)
      y[i] <- sum(x<=40)*100/input$sz
    }
    y = signif(y,4)
    barplot(table(y), col = 'darkgray', border = 'white')
  })
})
