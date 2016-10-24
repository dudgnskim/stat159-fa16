library(shiny)
palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
#library(rsconnect)
#rsconnect::setAccountInfo(name='dudgnskim', token='72FBBA2DC7A16304390003792F2F7C0E',
#                          secret='zS9A15rTImWtgcPjq1B2Hz974Va+JSNTz3XjD6NJ')
#rsconnect::deployApp('/Users/HOON/coding/stat159/stat159-fa16/labs/lab8')
### Import Advertising.csv and generate regression.RData, scatterplot-tv-sales.png
ad <- read.csv('Advertising.csv', header=TRUE)[,-1]

## Shiny
ui <- fluidPage(
  headerPanel('Regression of Advertising data'),
  sidebarPanel(
    selectInput('predictors', 'X variables', names(ad)[-4]),
    selectInput('response', 'Y variable', names(ad)[[4]],
                selected = names(ad)[[4]])
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  selectedData <- reactive({
    ad[, c(input$predictors, input$response)]
  })
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(), pch = 20, cex = 2)
  })
}

shinyApp(ui = ui, server = server)