library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Hello Coursera!"),
    
    # Sidebar with a slider input for the number of bins
    sidebarLayout(
        sidebarPanel(
            h4("Height"),
            numericInput("feet", "Feet", value=5),
            numericInput("inch", "Inches", value=6),
            h4("Weight"),
            numericInput("pound", "Pounds", value=140)
            
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            textOutput("Your BMI is"),
            textOutput("text1"),
            br(),
            p("Underweight < 18.5"),
            p("Normal weight = 18.5 - 25"),
            p("Overweight = 25 - 30"),
            p("Obese >= 30")
        )
    )
))