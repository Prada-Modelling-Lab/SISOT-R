#!/usr/bin/env Rscript
# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Frederick T. A. Freeth     25/10/2023 |
# ============================================================================ #

# Main dark blue colour: #1a3146
# pink/red red color: #ff6960
# light blue/silver: #6e818f

library(shiny)

ui <- fluidPage(
  textInput(
    inputId = "reviewer_names",
    label = "Reviewer Name(s)",
    placeholder = "Please insert your name(s) here."
  ),
  textInput(
    inputId = "reviewer_titles_and_affiliations",
    label = "Reviewer Titles and Affiliations",
    placeholder = "Please insert your titles and affiliations here."
  ),
  textInput(
    inputId = "reviewer_familiarity",
    label = "Please describe your familiarity with the tool.",
    placeholder = "Please describe your familiarity here."
  ),
  textInput(
    inputId = "tool_name",
    label = "Name of Tool",
    placeholder = "Please insert the name of the tool."
  ),
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)

# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Code End                              |
# ============================================================================ #