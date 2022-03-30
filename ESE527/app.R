## Only run examples in interactive R sessions
if (interactive()) {
  shinyApp(
    ui = fluidPage(
      selectInput("age", "What is your age?:",
                  list("19-30", "31-40", "41-50", "Above 50")
      ),
      selectInput("gender", "What is your gender?:",
                  list("Female", "Male")
      ),
      textOutput("result")
    ),
    server <- function(input, output, session) {
      
      data <- reactive(asthmaData)
      data.label <- reactive(jstable::mk.lev(asthmaData))
      
      out_linear <- callModule(fm1, "linear", data = data, data_label = data.label,
                               data_varStruct = NULL)
      
      output$lineartable <- renderDT({
        datatable(out_linear()$table, rownames=T, caption = out_linear()$caption)
      })}
  )}