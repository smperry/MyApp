library(shiny)

ui <- fluidPage(
  titlePanel("Hello Posit Connect"),
  sidebarLayout(
    sidebarPanel("This is a simple app"),
    mainPanel(textOutput("greeting"))
  )
)

server <- function(input, output) {
  output$greeting <- renderText("Hello from Off-Host!")
}

shinyApp(ui, server)