library(shiny)
shinyServer(
  function(input, output){
      
    f <- reactive({if(input$op == '+')
      x <- as.numeric(input$num1) + as.numeric(input$num2)
      else if(input$op == '-')
        x <- as.numeric(input$num1) - as.numeric(input$num2)
      else if(input$op == '*')
        x <- as.numeric(input$num1) * as.numeric(input$num2)
      else if(input$op == '/')
        x <- as.numeric(input$num1) / as.numeric(input$num2)
      else
        x <- ''})
      output$onum1 <- renderPrint({input$num1})
      output$onum2 <- renderPrint({input$num2})
      output$oid1 <- renderPrint({input$id1})
      output$ores <- renderText({input$exec
                                 isolate(paste(input$num1, input$op, input$num2, '=', f()))})
    
  }
  )