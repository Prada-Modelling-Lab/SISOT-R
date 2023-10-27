#!/usr/bin/env Rscript
# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Frederick T. A. Freeth     26/10/2023 |
# ============================================================================ #

library(shiny)

ui <- navbarPage(
  tags$style(
    type = "text/css", "
    
    /* When narrow-device mode starts*/
    @media only screen and (max-width: 768px) {
      body {
        padding-top: 220px !important;
      }
    }
    
    body {
    padding-top: 70px;
      font-family: sans-serif;
      font-size: 1.5rem;
      font-weight: 400;
      line-height: 1.4;
      color: #212529;
      text-align: left;
      background-color: #fff;
    }
    
    p {text-align: justify;}
    
    /* Change the headings to have UARF branding */
    h1 {color: #1a3146;}
    h2, h3, h4 {color: #ff6960}
    
    /* Navbar Styling */
    .navbar, .navbar a, .navbar-brand {
      background-color: #1a3146 !important;
      border-color: #1a3146 !important;
      border: 1px solid;
      color: #fff !important;
      text-align: center;
      padding: 5px 5px;
    }
    .navbar a:hover{
      background-color: #6e818f !important;
      border-color: #ff6960 !important;
      border: 1px solid;
    }
    .navbar a:focus {
      border-color: #ff6960 !important;
      border: 1px solid;
    }
    
    /* Footer Styling */
    .footer-wrapper {
      z-index: 1000;
      align: right;
    }
    .footer-top {
      display: block !important;
      width: 100%;
      padding-right: 50px;
      padding-left: 50px;
      padding-top: 25px;
      padding-bottom: 25px;
      margin-right: auto;
      margin-left: auto;
      box-sizing: border-box;
      background-color: #6e818f;
      color: #fff;
    }
    .footer-bottom{
      display: block !important;
      width: 100%;
      padding-right: 50px;
      padding-left: 50px;
      padding-top: 25px;
      padding-bottom: 25px;
      margin-right: auto;
      margin-left: auto;
      box-sizing: border-box;
      background-color: #1a3146;
      color: #fff !important;
    }
    .footer-button-blue {
      color: #fff !important;
      padding-right: 10px;
    }
    .footer-button-blue:hover {
      color: #1f9eff !important;
      text-decoration: none;
      text-align: center;
    }
    
    /* Footer icon styling */
    .fab {
      color: #fff !important;
      font-size: 30px;
      text-align: center;
      padding: 5px 5px;
    }
    .fab:hover{text-decoration: none;}
  "),
  windowTitle = "SISOT-R Application",
  position = "fixed-top",
  title = HTML('<a href="https://www.unitedagainstrabies.org/"><img src="uarf_logo_web.svg", style="width:70px;"></a>', "SISOT-R"),
  tabPanel(
    title = "Information",
    h1("About This App"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    h2("How-to Guide"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    h2("Authorship Statement"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ),
  tabPanel(
    title = "Tool Evaluator",
    fluidRow(
      column(
        width = 8,
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
              choices = NULL,
              selected = NULL,
              multiple = TRUE,
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
        p("Focuses on i) logistics for accessing and using the tool, ii) the platforms on which the tool runs (if applicable), iii) relevant costs, and iv) the level of user support that is provided by the developer/manufacturer."),
        fluidRow(
          column(
            width = 4,
            selectizeInput(
              inputId = "TBC",
              label = "Is the tool readily available?",
              choices = list(
                "1 - Online, open access (e.g. mobile apps that are freely available on the Google play store, iOS App Store).",
                "2 - Online, limited access (e.g. mobile apps that can be freely downloaded, but access is granted by the developer).",
                "3 - Paper based, free to download/access.",
                "4 - Paper-based, with controlled distribution (e.g. developer directly shares the tool via email/or in person).",
                "5 - Unique device needed (requires that users obtain a device not commonly avaialable, or only available through the tool developer. Eg. GARC Data Logger, POI (USDA), etc.)."
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
                "1 - ALL DIGITAL PLATFORMS (computers, tablets, smart phones and feature phones etc.).",
                "2 - At least one digital platform (e.g. only mobile phones or only computers).",
                "3 - Only paper-based."
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
                "1 - Yes, the tool can run on any computer or phone operating system (i.e. Android, iOS, Windows, Mac OS).",
                "2 - Yes, it is compatible with one type of operating system for both computers and phones (e.g. Android AND Windows).",
                "3 - No. It is only operable on one type of operating system (e.g. Windows only [no mobile OS], but development is underway for other operating systems.",
                "4 - No. It is only operable on one type of operating system (e.g. Windows only [no mobile OS], with no additional development planned.",
                "5 - No, and it wont be possible.",
                "NA - Not applicable."
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
        fluidRow(
          column(
            width = 4,
            selectizeInput(
              inputId = "TBC",
              label = "Does the tool need to be purchased (e.g. purchasing an app or tool-specific equipment)?",
              choices = list(
                "1 - No, it's free to access.",
                "2 - Yes, the tool needs to be purchased at a once-off cost.",
                "3 - Yes, the tool needs to be purchased but at a recurring cost (e.g. monthly subscription)."
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
              label = "Does the tool have EQUIPMENT costs for the USER with regards to keeping it in use? 
    E.g smartphone replacement due to breakage, theft etc.",
              choices = list(
                "1 - No noteworthy equipment running costs.",
                "2 - Equipment might need to be replaced sporadically (less than once a year).",
                "3 - The developer noted that equipment such as smartphones might need to be replaced often (more than once a year).",
                "NA - Not applicable"
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
              label = "Can the developer offer support?",
              choices = list(
                "1 - Free comprehensive support",
                "2 - Comprehensive support at a cost, limited support for free.",
                "3 - Free limited support, comprehensive support not available.",
                "4 - Limited support at a cost.",
                "5 - No support available.",
                "NA - Not applicable"
              ),
              selected = NULL,
              multiple = FALSE,
              options = list(
                "plugins" = list("remove_button"),
                "create" = FALSE,
                "persist" = TRUE
              )
            )
          )
        ),
        h3("Data Collection and Needs"),
        p("Focuses on the type of data that is captured by the tool."),
        fluidRow(
          column(
            width = 4,
            selectizeInput(
              inputId = "TBC",
              label = "What internet capacity is required to use the tool?",
              choices = list(
                "1 - No internet required.",
                "2 - Intermittant internet access to standard WIFI/3g.",
                "3 - Continuous access to standard WIFI/3g",
                "4 - Continuous access to LTE/4g.",
                "5 - Requires continuous stable high speed internet (5g/9Mbps or greater)."
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
              label = "If this is a case detection tool: Can animal cases be detected?",
              choices = list(
                "1 - Yes, extensive case-based data is currently collected in accordance with WHO and OIE recommended standards.",
                "2 - Yes, limited data is collected for animal cases.",
                "3 - No animal module exists and it is not possible (or extremely difficult) to add questions related to animal case detection.",
                "NA - Not applicable."
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
              label = "If this is a case detection tool: Can human cases / bite cases be detected?",
              choices = list(
                "1 - Yes, extensive case-based data is currently collected in accordance with WHO and OIE recommended standards.",
                "2 - Yes, limited data is collected for human cases.",
                "3 - No human module exists and it is not possible (or extremely difficult) to add questions related to human case detection.",
                "NA - Not applicable."
              ),
              selected = NULL,
              multiple = FALSE,
              options = list(
                "plugins" = list("remove_button"),
                "create" = FALSE,
                "persist" = TRUE
              )
            )
          )
        ),
        fluidRow(
          column(
            width = 4,
            selectizeInput( # Future task: Make the label points on new lines
              inputId = "TBC",
              label = "If this is a case detection tool: does it have an IBCM component based on active rabies surveillance LINKING data together about the:\n1) Suspect animal,\n2) Exposed human\n3) Laboratory results,\n4) Quarantine data.",
              choices = list(
                "1 - Yes, extensive details on cases, exposures, quarantine and laboratory results are collected, and data is EASILY LINKED within the tool.",
                "2- Yes, extensive details on cases, exposures, quarantine and laboratory results are collected, but data is NOT EASILY LINKABLE within the tool.",
                "3 - Yes, but not all data elements are represented.",
                "4 - IBCM data elements are collected, but in aggregate form. Relational and line-list data are not possible.",
                "5 - No, this is currently not a feature of the tool.",
                "NA - Not applicable."
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
              label = "Does the tool send notifications to the user?",
              choices = list(
                "1 - Yes, various communication channels are available.",
                "2 - Yes, one communication channel is available.",
                "3 - No, this is currently not a feature of the tool.",
                "NA - Not applicable."
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
              label = "Does the tool allow for bi-directional, real-time communication between users and program managers?",
              choices = list(
                "1 - Yes, the tool allows for program managers to push out messages and allows users to reply.",
                "2 - No, this is currently not a feature of the tool.",
                "NA - Not applicable."
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
        textInput(
          inputId = "TBC",
          label = "What type of data does the tool collect?",
          placeholder = "Please describe the types of data the tool collects here.",
          width = "100%"
        ),
        h3("Data Management and Utility"),
        p("Focuses on the data analysis and outputs provided by the tool."),
        fluidRow(
          column(
            width = 4,
            selectizeInput(
              inputId = "TBC",
              label = "Does this tool have the capacity to automatically detect anomalies in the data and notify the user? (If this requires human validation/review [manual] then it is not relevant to the tool)",
              choices = list(
                "1 - Yes, validation occurs real-time within the same tool without needing internet connection.",
                "2 - Yes, validation is automated, but occurs post-data collection once an internet connection is available.",
                "3 - No, validation must occur through a separate process",
                "NA - Not applicable."
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
              label = "Does the tool have the capacity to analyze data?",
              choices = list(
                "1 - Yes, comprehensive data analysis is incorporated into the tool.",
                "2 - Yes, but additional tools, software, or minimal technical expertise or funding, are required for comprehensive data analysis.",
                "3 - No. Additional tools, software, or significant technical expertise or funding, are required for comprehensive data analysis.",
                "NA - Not applicable."
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
              label = "Will the tool generate outputs that can assist with data presentation and/or reporting?",
              choices = list(
                "1 - Yes.",
                "2 - No."
              ),
              selected = NULL,
              multiple = FALSE,
              options = list(
                "plugins" = list("remove_button"),
                "create" = FALSE,
                "persist" = TRUE
              )
            )
          )
        ),
        fluidRow(
          
        ),
        fluidRow(
          
        ),
        fluidRow(
          
        ),
        h3("Data Storage and Protection"),
        p("Focuses on data ownership, protection and storage."),
        fluidRow(
          
        ),
        fluidRow(
          
        ),
        h3("Tool Flexiblity"),
        p("Focuses on the interoperability of the tool and its adaptability for use in different contexts or scenarios."),
        fluidRow(
          
        ),
        fluidRow(
          
        ),
        h3("Ease of Use and Training Needs"),
        p("Focuses on the training requirements, including the level of complexity and difficulty to navigate and understand the tool as well as the technical or operational skillsets that are required to use the tool."),
        fluidRow(
          
        ),
        fluidRow(
          
        ),
        h3("Sustainability"),
        p("Focuses on the different scenarios that indicate how sustainable the tool has been and whether it has been thoroughly field-tested for implementation."),
        fluidRow(
          
        ),
        fluidRow(
          
        )
      ),
      column(
        width = 4,
        position = "fixed",
        h1("UAR Evaluation Matrix"),
        p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        plotOutput("barPlot"),
        h3(textOutput(outputId = "overall_score")),
        p("Evaluations are performed using the ‘UAR Evaluation Matrix’, a rabies-specific tool evaluation instrument adapted from the FAO-WOAH-WHO Tripartite Surveillance and Information Sharing Operational Tool evaluation process and instrument.")
      )
    )
  ),
  tabPanel(
    title = "Legal and Data Management",
    h1("Legal and Data Management"),
    h2("Legal"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    h2("Data Management"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    h2("Privacy Disclaimer"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  ),
  footer = tagList(
    fluidRow(
      class = "footer-wrapper",
      fluidRow(
        class = "footer-top",
        column(
          width = 4,
          align = "center",
          HTML('<img src="uarf_footer_logo.svg", style="width:90px;">')
        ),
        column(
          width = 4,
          align = "center",
          tags$a(class = "footer-button-blue", href = "https://www.unitedagainstrabies.org/contact/", "Contact Us"),
        ),
        column(
          width = 4,
          align = "center",
          tags$a(style = "color: #B5BBBf !important;", "© United Against Rabies Forum 2023")
        )
      ),
      fluidRow(
        class = "footer-bottom",
        column(width = 4),
        column(
          width = 4,
          align = "center",
          "Follow us",
          tags$a(href = "https://twitter.com/UARForum", icon("twitter")),
          tags$a(href = "https://www.linkedin.com/company/united-against-rabies/", icon("linkedin")),
          tags$a(href = "https://www.facebook.com/UnitedAgainstRabies/", icon("facebook")),
          tags$a(href = "https://www.instagram.com/unitedagainstrabies_/", icon("instagram")),
          tags$a(href = "https://www.youtube.com/channel/UCQpfAFLhSib0k5aBiwRB-zw", icon("youtube"))
        ),
        column(width = 4)
      )
    )
  )
)

server <- function(input, output, session) {
  # Official United Against Rabies Forum colors and fonts as of 25/10/2023:
  UARF_BLUE1 <- "#1a3146"
  UARF_RED <- "#ff6960"
  UARF_BLUE2 <- "#1f9eff"
  UARF_BLUE3 <- "#6e818f"
  UARF_GREEN <- "#559275"
  UARF_YELLOW <- "#fcd533"
  UARF_GREEN2 <- "#499399"
  UARF_LIGHTGREY <- "#f6f6f6"
  UARF_FONT <- "Work Sans"
  UARF_FONT_COLOUR <- "#212529"
  
  scores <- c(9, 8.3, 8.9, 8.0, 8.0, 8.7, 10.0)
  
  output$overall_score <- renderText({paste0("Total Score: ", 10*round(mean(scores), 2), "%")})
  
  output$barPlot <- renderPlot({
    par(mar = c(5, 8, 1, 1), las = 1)
    barplot(
      height = scores,
      names.arg = rev(c(
        "Accessibility", "Data Collection", "Data Management", "Data Storage",
        "Flexibility", "Ease of Use", "Sustainability"
      )),
      horiz = TRUE,
      xlab = "Weighted score (out of ten)",
      ylab = "",
      xlim = c(0, 10),
      xaxp = c(0, 10, 10), # Plot from 0 to 10 inclusive with 10 tick marks,
      col = rev(c(UARF_BLUE1, UARF_RED, UARF_BLUE2, UARF_BLUE3, UARF_GREEN, UARF_YELLOW, UARF_GREEN2)),
      border = NA,
    )
    # abline(v = seq(from = 2, to = 10, by = 2))
  })
}

shinyApp(ui, server)

# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Code End                              |
# ============================================================================ #