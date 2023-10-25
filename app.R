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
    label = "Reviewer Titles and Affiliations:",
    placeholder = "Please insert your titles and affiliations here."
  ),
  textInput(
    inputId = "reviewer_familiarity",
    label = "Please describe your familiarity with the tool:",
    placeholder = "Please describe your familiarity here."
  ),
  textInput(
    inputId = "tool_name",
    label = "Name of Tool:",
    placeholder = "Please insert the name of the tool."
  ),
  selectInput(
    inputId = "tool_types",
    label = "Type(s) of tool:",
    choices = c("Prioritization", "Assessment", "Planning", "Implementation", "Evaluation"),
    multiple = TRUE,
    selectize = TRUE
  ),
  selectInput(
    inputId = "tool_objectives",
    label = "Objective(s):",
    choices = c("Data Collection", "Translation", "Validation", "Analysis", "Reporting"),
    multiple = TRUE,
    selectize = TRUE
  ),
  textInput(
    inputId = "tool_source",
    label = "Tool Source:",
    placeholder = "Please insert the source of the tool."
  ),
  textInput(
    inputId = "tool_version",
    label = "Version Number of the Tool:",
    placeholder = "Please insert the version number of the tool."
  ),
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)

# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Code End                              |
# ============================================================================ #