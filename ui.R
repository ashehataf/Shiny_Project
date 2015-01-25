#library(shiny)
##shinyUI(pageWithSidebar(
##  headerPanel("Data Science FTW!"),
##  sidebarPanel(h3('Sidebare text')),
##  mainPanel(h3('Main Panel text'))
##  ))
shinyUI(pageWithSidebar(
  headerPanel("Simple Calculator for 2 numbers only"),
  sidebarPanel(
    numericInput('num1', '1st parameter', value = 0),
    numericInput('num2', '2nd parameter', value = 0),
    radioButtons("op", "Mathimatical Operation:",
                 c("+" = "+",
                   "-" = "-",
                   "*" = "*",
                   "/" = "/")),
    actionButton("exec", 'Execute')
    ),
  mainPanel(
    h3('Result'),
    h4('1st parameter'),
    verbatimTextOutput('onum1'),
    h4('2nd parameter'),
    verbatimTextOutput('onum2'),
    h4('Result'),
    verbatimTextOutput('ores')    
    )
  ))