#!/usr/bin/env Rscript
# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Frederick T. A. Freeth     25/10/2023 |
# ============================================================================ #

library(shiny)


# Official United Against Rabies Forum colours and fonts as of 25/20/2023:
UARF_DARKBLUE = "#1a3146"
UARF_LIGHTBLUE = "#6e818f"
UARF_PINK = "#ff6960"
UARF_FONT = "Work Sans"

# Add languages here to appear in the list for tool languages.
PRELOADED_LANGUAGES <- c(
  "English", "Mandarin Chinese", "Hindi", "Spanish", "French",
  "Modern Standard Arabic", "Bengali", "Portuguese", "Russian", "Urdu",
  "Indonesian", "German", "Japenese"
)


ui <- navbarPage(
  tags$style(
    type = "text/css", "
    body {
      text-align: justify;
      font-size: 16px;
    }
    
    /* Change the headings to have UARF branding */
    h1, h2, h3, h4 {
      text-align: left;
      color: #1a3146;
    }
    
    /* Navbar Styling */
    .navbar-default {
      background-color: #1a3146 !important;
      color: #fff !important;
    }
    .navbar-brand {
      background-color: #1a3146 !important;
      color: #fff !important;
    }
    .navbar-default a:hover {
      background-color: #6e818f !important;
      border-color: #ff6960;
    }
  "),
  title = HTML('<a href="https://www.unitedagainstrabies.org/"><img src="uarf_logo_web.svg", style="width:60px;"></a>', "SISOT-R"),
  tabPanel(
    title = "Information",
    HTML('<center><a href="https://www.unitedagainstrabies.org/"><img src="uarf_logo_web.svg", style="width:250px;"></a></center>'),
    h1("About This App"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ),
  tabPanel(
    title = "Tool Evaluator",
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
    selectizeInput(
      inputId = "tool_types",
      label = "Type(s) of tool:",
      choices = c("Prioritization", "Assessment", "Planning", "Implementation", "Evaluation"),
      multiple = TRUE,
      options = list("plugins" = list("remove_button"))
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
      placeholder = "Please describe the availability of the tool."
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
      choices = PRELOADED_LANGUAGES,
      selected = NULL,
      multiple = TRUE,
      options = list(
        "plugins" = list("remove_button"),
        "create" = TRUE,
        "persist" = TRUE
      )
    ),
    textInput(
      inputId = "tool_description",
      label = "Brief Tool Description",
      placeholder = "Please describe the tool briefly here."
    )
  ),
  tabPanel(
    title = "Authorship & Funding",
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ),
  tabPanel(
    title = "Legal and Data Manegement",
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ),
  tabPanel(
    title = "Publicated Works Using This App",
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ),
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)

# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Code End                              |
# ============================================================================ #