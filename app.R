#!/usr/bin/env Rscript
# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Frederick T. A. Freeth     25/10/2023 |
# ============================================================================ #

# Main dark blue colour: #1a3146
# pink/red red color: #ff6960
# light blue/silver: #6e818f

library(shiny)

# Add languages here to appear in the list for tool languages.
preloaded_languages <- c(
  "English", "Mandarin Chinese", "Hindi", "Spanish", "French",
  "Modern Standard Arabic", "Bengali", "Portuguese", "Russian", "Urdu",
  "Indonesian", "German", "Japenese"
)


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
  textInput(
    inputId = "tool_point_of_contact",
    label = "Point of Contact:",
    placeholder = "Please insert the tool's contact information."
  ),
  textInput(
    inputId = "tool_availability",
    label = "Version Number of the Tool:",
    placeholder = "Please descrbe the availability of the tool."
  ),
  selectInput( # need to be able to input the number of countries if # countries, if known is selected
    inputId = "tool_history_of_use",
    label = "History of Use:",
    choices = c("Developed, no pilot test", "Pilot tested", "Pilot tested, limited use", "Frequently used", "# countries, if known"),
    multiple = FALSE,
    selectize = TRUE
  ),
  selectizeInput( # Future task: be able to import all recognized languages
    inputId = "tool_languages",
    label = "Tool Language(s) - List all availiable now:",
    choices = preloaded_languages,
    selected = NULL,
    multiple = TRUE,
    options = list(
      "plugins" = list("remove_button"),
      "create" = TRUE,
      "persist" = TRUE
    )
  ),
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)

# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Code End                              |
# ============================================================================ #