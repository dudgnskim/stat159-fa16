library(shiny)
palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
#library(rsconnect)
#rsconnect::setAccountInfo(name='dudgnskim', token='72FBBA2DC7A16304390003792F2F7C0E',
#                          secret='zS9A15rTImWtgcPjq1B2Hz974Va+JSNTz3XjD6NJ')
#rsconnect::deployApp('/Users/HOON/coding/stat159/stat159-fa16/labs/lab8')
### Import Advertising.csv and generate regression.RData, scatterplot-tv-sales.png
ad <- read.csv('Advertising.csv', header=TRUE)
tv <- ad$TV
sales<- ad$Sales

## Shiny
ui <- fluidPage(
  headerPanel('Regression of Advertising data'),
  sidebarPanel(
    selectInput('predictors', 'X variables', names(ad)[-c(1,5)]),
    selectInput('response var.', 'Y variable', names(ad),
                selected = names(ad)[5])
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  output$plot <- renderPlot(
    title <- "Scatterplot of Sales on predictors",
    plot(ad$Sales ~ input$variable, data=ad, pch=19, cex=1, col='blue')
  )
}

shinyApp(ui = ui, server = server)

# Save regression.RData
reg <- lm(sales ~ tv)
reg_sum <- summary(reg)
save(reg_sum, file='data/regression.RData')

#Generate scatterplot-tv-sales
png('images/scatterplot-tv-sales.png')
plot(tv, sales, pch=19, cex=1, col='lavender', main='Regression Analysis of Sales on TV')
abline(reg)
dev.off()
pdf('images/scatterplot-tv-sales.pdf')
plot(tv, sales, pch=19, cex=1, col='lavender', main='Regression Analysis of Sales on TV')
abline(reg)
dev.off()