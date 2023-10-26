#!/usr/bin/env Rscript
# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Frederick T. A. Freeth     26/10/2023 |
# ============================================================================ #

library(shiny)


# Official United Against Rabies Forum colours and fonts as of 25/10/2023:
UARF_DARKBLUE <- "#1a3146"
UARF_LIGHTBLUE <- "#6e818f"
UARF_PINK <- "#ff6960"
UARF_FONT <- "Work Sans"

# Add languages here to appear in the list for tool languages. These are a list
# of the most commonly spoken ones from Wikipedia.
PRELOADED_LANGUAGES <- c(
  "English", "Mandarin Chinese", "Hindi", "Spanish", "French",
  "Modern Standard Arabic", "Bengali", "Portuguese", "Russian", "Urdu",
  "Indonesian", "German", "Japenese"
)


ui <- navbarPage(
  tags$style(
    type = "text/css", "
    body {
      font-size: 16px;
    }
    
    p {text-align: justify;}
    
    /* Change the headings to have UARF branding */
    h1, h2, h3, h4 {
      text-align: left;
      color: #1a3146;
    }
    
    /* Navbar Styling */
    .navbar, .navbar-brand, .navbar a:hover, .navbar a:focus {
      background-color: #1a3146 !important;
      color: #fff !important;
    }
    .navbar-default a:hover, .navbar-nav>li>a:focus {
      background-color: #6e818f !important;
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
    h1("Tool Evaluator"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel fringilla est ullamcorper eget nulla facilisi etiam. Massa tempor nec feugiat nisl. Magna eget est lorem ipsum dolor sit amet. Consectetur a erat nam at. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Vitae congue eu consequat ac felis donec et odio. Varius quam quisque id diam vel quam elementum pulvinar. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Erat pellentesque adipiscing commodo elit. Consequat interdum varius sit amet mattis vulputate enim nulla. In pellentesque massa placerat duis ultricies lacus sed. Risus sed vulputate odio ut. Faucibus in ornare quam viverra orci sagittis eu volutpat. Urna id volutpat lacus laoreet. Morbi tristique senectus et netus et malesuada fames. Ut tortor pretium viverra suspendisse. Pharetra diam sit amet nisl suscipit adipiscing bibendum."),
    p("Tortor at auctor urna nunc id cursus metus aliquam. Nisl condimentum id venenatis a condimentum. Pellentesque dignissim enim sit amet venenatis urna. Amet volutpat consequat mauris nunc congue nisi vitae. Vel pretium lectus quam id leo in vitae turpis. Libero nunc consequat interdum varius sit amet mattis vulputate. Ipsum nunc aliquet bibendum enim facilisis gravida. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Elementum nisi quis eleifend quam adipiscing vitae proin. Nam at lectus urna duis."),
    h2("1. Reviewer Information"),
    fluidRow(
      column(
        width = 4,
        textInput(
          inputId = "reviewer_names",
          label = "Reviewer Name(s)",
          placeholder = "Please insert your name(s) here."
        )
      ),
      column(
        width = 4,
        textInput(
          inputId = "reviewer_titles_and_affiliations",
          label = "Reviewer Titles and Affiliations:",
          placeholder = "Please insert your titles and affiliations here."
        )
      ),
      column(
        width = 4,
        textInput(
          inputId = "reviewer_familiarity",
          label = "Please describe your tool familiarity:",
          placeholder = "Please describe your familiarity here."
        )
      )
    ),
    h2("2. Tool Information"),
    fluidRow(
      column(
        width = 4,
        textInput(
          inputId = "tool_name",
          label = "Name of Tool:",
          placeholder = "Please insert the name of the tool."
        )
      ),
      column(
        width = 4,
        selectizeInput(
          inputId = "tool_types",
          label = "Type(s) of Tool:",
          choices = c("Prioritization", "Assessment", "Planning", "Implementation", "Evaluation"),
          multiple = TRUE,
          options = list("plugins" = list("remove_button"))
        )
      ),
      column(
        width = 4,
        selectizeInput(
          inputId = "tool_objectives",
          label = "Objective(s):",
          choices = c("Data Collection", "Translation", "Validation", "Analysis", "Reporting"),
          multiple = TRUE,
          options = list("plugins" = list("remove_button"))
        )
      ),
    ),
    fluidRow(
      column(
        width = 4,
        textInput(
          inputId = "tool_source",
          label = "Tool Source:",
          placeholder = "Please insert the source of the tool."
        )
      ),
      column(
        width = 4,
        textInput(
          inputId = "tool_version",
          label = "Version Number of the Tool:",
          placeholder = "Please insert the version number of the tool."
        )
      ),
      column(
        width = 4,
        textInput(
          inputId = "tool_point_of_contact",
          label = "Point of Contact:",
          placeholder = "Please insert the tool's contact information."
        )
      )
    ),
    fluidRow(
      column(
        width = 4,
        textInput(
          inputId = "tool_availability",
          label = "Version Number of the Tool:",
          placeholder = "Please describe the availability of the tool."
        )
      ),
      column(
        width = 4,
        selectizeInput(
          inputId = "tool_platforms",
          label = "History of Use:",
          choices = c("Manual", "Electronic", "Manual and Electronic"),
          selected = NULL,
          multiple = FALSE,
          options = list("plugins" = list("remove_button"))
        )
      ),
      column(
        width = 4,
        textInput( # Future task: be able to import all recognized languages
          inputId = "tool_prerequisites",
          label = "Tool Prerequisites:",
          placeholder = "Please describe the tool prerequisites."
        )
      )
    ),
    fluidRow(
      column(
        width = 4,
        selectizeInput( # need to be able to input the number of countries if # countries, if known is selected
          inputId = "tool_history_of_use",
          label = "History of Use:",
          choices = c("Developed, no pilot test", "Pilot tested", "Pilot tested, limited use", "Frequently used", "# countries, if known"),
          selected = NULL,
          multiple = FALSE,
          options = list("plugins" = list("remove_button"))
        )
      ),
      column(
        width = 4,
        textInput(
          inputId = "tool_publishing",
          label = "Publishing:",
          placeholder = "Please describe how the tool is published."
        )
      ),
      column(
        width = 4,
        selectizeInput( # Future task: be able to import all recognized languages
          inputId = "tool_languages",
          label = "Tool Language(s) - List all availiable:",
          choices = PRELOADED_LANGUAGES,
          selected = NULL,
          multiple = FALSE,
          options = list(
            "plugins" = list("remove_button"),
            "create" = TRUE,
            "persist" = TRUE
          )
        )
      )
    ),
    textInput(
      inputId = "tool_description",
      label = "Brief Tool Description",
      placeholder = "Please describe the tool briefly here.",
      width = "100%"
    ),
    h2("3. Inclusion Criteria"),
    h3("Accessiblity"),
    fluidRow(
      column(
        width = 4,
        selectizeInput(
          inputId = "TBC",
          label = "Is the tool readily available?",
          choices = list(
            "1 - Online, open access (e.g. mobile apps that are freely available on the Google play store, iOS App Store)",
            "2 - Online, limited access (e.g. mobile apps that can be freely downloaded, but access is granted by the developer)",
            "3 - Paper based, free to download/access",
            "4 - Paper-based, with controlled distribution (e.g. developer directly shares the tool via email/or in person)",
            "5 - Unique device needed (requires that users obtain a device not commonly avaialable, or only available through the tool developer. Eg. GARC Data Logger, POI (USDA), etc.)"
          ),
          selected = NULL,
          multiple = FALSE,
          options = list(
            "plugins" = list("remove_button"),
            "create" = FALSE,
            "persist" = TRUE
          )
        )
      ),
      column(
        width = 4,
        selectizeInput(
          inputId = "TBC",
          label = "On what platforms can the tool run?",
          choices = list(
            "1 - ALL DIGITAL PLATFORMS (computers, tablets, smart phones and feature phones etc.) ",
            "2 - At least one digital platform (e.g. only mobile phones or only computers) ",
            "3 - Only paper-based"
          ),
          selected = NULL,
          multiple = FALSE,
          options = list(
            "plugins" = list("remove_button"),
            "create" = FALSE,
            "persist" = TRUE
          )
        )
      ),
      column(
        width = 4,
        selectizeInput(
          inputId = "TBC",
          label = "Can the tool run on multiple computer and/or phone operating systems?",
          choices = list(
            "1 - Yes, the tool can run on any computer or phone operating system (i.e. Android, iOS, Windows, Mac OS)",
            "2 - Yes, it is compatible with one type of operating system for both computers and phones (e.g. Android AND Windows)",
            "3 - No. It is only operable on one type of operating system (e.g. Windows only [no mobile OS], but development is underway for other operating systems",
            "4 - No. It is only operable on one type of operating system (e.g. Windows only [no mobile OS], with no additional development planned",
            "5 - No, and it wont be possible"
          ),
          selected = NULL,
          multiple = FALSE,
          options = list(
            "plugins" = list("remove_button"),
            "create" = FALSE,
            "persist" = TRUE
          )
        )
      ),
      
    ),
    h3("Data Collection and Needs"),
    fluidRow(
      
    ),
    h3("Data Manegement and Utility"),
    fluidRow(
      
    ),
    h3("Data Storage and Protection"),
    fluidRow(
      
    ),
    h3("Tool Flexiblity"),
    fluidRow(
      
    ),
    h3("Ease of Use and Training Needs"),
    fluidRow(
      
    ),
    h3("Sustainability"),
    fluidRow(
      
    ),
    
  ),
  tabPanel(
    title = "Results",
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
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