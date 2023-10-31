#!/usr/bin/env Rscript
# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Frederick T. A. Freeth     31/10/2023 |
# ============================================================================ #

# ---- Packages ----
library(shiny)

#' Documentation:
#' --------------
#' 
#' 


# ---- UI ----
ui <- navbarPage(
  ## ---- CSS Styling ----
  tags$style(
    type = "text/css", "
    /* Use Work Sans as the main font for the app. */
    @import url('https://fonts.googleapis.com/css2?family=Work+Sans&display=swap');
    * {font-family: Work Sans, sans-serif;}
    
    /* When narrow-device mode starts*/
    @media only screen and (max-width: 768px) {
      body {
        padding-top: 220px !important;
      }
      .results-pane{
        position: unset !important; /* Allow pane to float under questionnaire */
      }
    }
    
    body {
      padding-top: 70px;
      font-size: 1.5rem;
      font-weight: 400;
      line-height: 1.4;
      color: #212529;
      text-align: left;
      background-color: #ededed !important;
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
    .navbar-brand a:hover{
      /* This stops hover-effects from appearing over the UAR navbar logo. */
      background-color: #1a3146 !important;
      border-color: #1a3146 !important;
      border: 1px solid;
    }
    
    /* Remove 300px max width of tool input fields */
    .shiny-input-container:not(.shiny-input-container-inline) {
      width: auto !important;
    }
    
    /* Restrict width text-based pages*/
    .info-and-legal {
      max-width: 600px !important;
      margin: 0px auto;
      min-height: 100%;
    }
    
    /* File Uploader Styling */
    .progress-bar{background-color: #1a3146;}
    
    /* Fix Results Pane To Side of Screen */
    .results-pane {
      position: fixed;
      right: 0;
    }
    
    /* Download Button Styling */
    .btn-default {
      color: #fff;
      background-color: #1a3146;
      border-color: #1a3146;
    }
    .btn-default:hover {
      color: #fff;
      background-color: #6e818f;
      border-color: #1a3146;
    }
    
    /* Footer Styling */
    .footer-top {
      display: block !important;
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
  
  ## ---- Navbar Contents ----
  windowTitle = "SISOT-R Application",
  position = "fixed-top",
  title = HTML('<a href="https://www.unitedagainstrabies.org/"><img src="uarf_logo_web.svg", style="width:70px;"></a>', "SISOT-R"),
  
  ## ---- Information Page ----
  tabPanel(
    title = "Information",
    class = "info-and-legal",
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
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  ),
  
  ## ---- Tool Evaluator Page -----
  tabPanel(
    title = "Tool Evaluator",
    fluidRow(
      ### ---- Tool UI Contents ----
      column(
        width = 8,
        h1("Tool Evaluator"),
        p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel fringilla est ullamcorper eget nulla facilisi etiam. Massa tempor nec feugiat nisl. Magna eget est lorem ipsum dolor sit amet. Consectetur a erat nam at. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Vitae congue eu consequat ac felis donec et odio. Varius quam quisque id diam vel quam elementum pulvinar. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Erat pellentesque adipiscing commodo elit. Consequat interdum varius sit amet mattis vulputate enim nulla. In pellentesque massa placerat duis ultricies lacus sed. Risus sed vulputate odio ut. Faucibus in ornare quam viverra orci sagittis eu volutpat. Urna id volutpat lacus laoreet. Morbi tristique senectus et netus et malesuada fames. Ut tortor pretium viverra suspendisse. Pharetra diam sit amet nisl suscipit adipiscing bibendum."),
        h2("Upload Answers"),
        p("Tortor at auctor urna nunc id cursus metus aliquam. Nisl condimentum id venenatis a condimentum. Pellentesque dignissim enim sit amet venenatis urna. Amet volutpat consequat mauris nunc congue nisi vitae. Vel pretium lectus quam id leo in vitae turpis. Libero nunc consequat interdum varius sit amet mattis vulputate. Ipsum nunc aliquet bibendum enim facilisis gravida. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Elementum nisi quis eleifend quam adipiscing vitae proin. Nam at lectus urna duis."),
        fileInput("uploadFile", label = "Upload Answers (CSV only):", accept = c("text/csv", "text/comma-separated-values", ".csv")),
        
        #### ---- Reviewer Information ----
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
        
        #### ---- Tool Information ----
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
            checkboxGroupInput(
              inputId = "tool_types",
              label = "Type(s) of Tool:",
              choices = c("Prioritization", "Assessment", "Planning", "Implementation", "Evaluation"),
            )
          ),
          column(
            width = 4,
            checkboxGroupInput(
              inputId = "tool_objectives",
              label = "Objective(s):",
              choices = c("Data Collection", "Translation", "Validation", "Analysis", "Reporting"),
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
              label = "Availability:",
              placeholder = "Please describe the availability of the tool."
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "tool_platforms",
              label = "Platform:",
              choices = c("Manual", "Electronic", "Manual and Electronic"),
              selected = NA
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
            radioButtons( # need to be able to input the number of countries if # countries, if known is selected
              inputId = "tool_history_of_use",
              label = "History of Use:",
              choices = c("Developed, no pilot test", "Pilot tested", "Pilot tested, limited use", "Frequently used"),
              selected = NA
            ),
            textInput(inputId = "number_of_countries", label = "Number of Countries:", width = "50%"),
            actionButton(inputId = "add_number_of_countries", label = "Add Value")
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
              choices = c(
                "English", "Mandarin Chinese", "Hindi", "Spanish", "French",
                "Modern Standard Arabic", "Bengali", "Portuguese", "Russian",
                "Urdu", "Indonesian", "German", "Japanese"
              ),
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
          placeholder = "Please describe the tool here."
        ),
        h2("3. Inclusion Criteria"),
        #### ---- Accessibility ----
        h3("3.1. Accessibility"),
        p("Focuses on i) logistics for accessing and using the tool, ii) the platforms on which the tool runs (if applicable), iii) relevant costs, and iv) the level of user support that is provided by the developer/manufacturer."),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q311",
              label = "Is the tool readily available?",
              choices = list(
                "1 - Online, open access (e.g. mobile apps that are freely available on the Google play store, iOS App Store)." = 5,
                "2 - Online, limited access (e.g. mobile apps that can be freely downloaded, but access is granted by the developer)." = 4,
                "3 - Paper based, free to download/access." = 3,
                "4 - Paper-based, with controlled distribution (e.g. developer directly shares the tool via email/or in person)." = 2,
                "5 - Unique device needed (requires that users obtain a device not commonly avaialable, or only available through the tool developer. Eg. GARC Data Logger, POI (USDA), etc.)." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q312",
              label = "On what platforms can the tool run?",
              choices = list(
                "1 - ALL DIGITAL PLATFORMS (computers, tablets, smart phones and feature phones etc.)." = 5,
                "2 - At least one digital platform (e.g. only mobile phones or only computers)." = 3,
                "3 - Only paper-based." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q313",
              label = "Can the tool run on multiple computer and/or phone operating systems?",
              choices = list(
                "1 - Yes, the tool can run on any computer or phone operating system (i.e. Android, iOS, Windows, Mac OS)." = 5,
                "2 - Yes, it is compatible with one type of operating system for both computers and phones (e.g. Android AND Windows)." = 4,
                "3 - No. It is only operable on one type of operating system (e.g. Windows only [no mobile OS], but development is underway for other operating systems." = 3,
                "4 - No. It is only operable on one type of operating system (e.g. Windows only [no mobile OS], with no additional development planned." = 2,
                "5 - No, and it wont be possible." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
        ),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q314",
              label = "Does the tool need to be purchased (e.g. purchasing an app or tool-specific equipment)?",
              choices = list(
                "1 - No, it's free to access." = 5,
                "2 - Yes, the tool needs to be purchased at a once-off cost." = 3,
                "3 - Yes, the tool needs to be purchased but at a recurring cost (e.g. monthly subscription)." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q315",
              label = "Does the tool have EQUIPMENT costs for the USER with regards to keeping it in use? E.g., smartphone replacement due to breakage, theft etc.",
              choices = list(
                "1 - No noteworthy equipment running costs." = 5,
                "2 - Equipment might need to be replaced sporadically (less than once a year)." = 3,
                "3 - The developer noted that equipment such as smartphones might need to be replaced often (more than once a year)." = 1,
                "NA - Not applicable" = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q316",
              label = "Can the developer offer support?",
              choices = list(
                "1 - Free comprehensive support" = 5,
                "2 - Comprehensive support at a cost, limited support for free." = 4,
                "3 - Free limited support, comprehensive support not available." = 3,
                "4 - Limited support at a cost." = 2,
                "5 - No support available." = 1,
                "NA - Not applicable" = NA
              ),
              selected = 0
            )
          )
        ),
        
        #### ---- Data Collection and Needs ----
        h3("3.2. Data Collection and Needs"),
        p("Focuses on the type of data that is captured by the tool."),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q321",
              label = "What internet capacity is required to use the tool?",
              choices = list(
                "1 - No internet required." = 5,
                "2 - Intermittant internet access to standard WIFI/3g." = 4,
                "3 - Continuous access to standard WIFI/3g" = 3,
                "4 - Continuous access to LTE/4g." = 2,
                "5 - Requires continuous stable high speed internet (5g/9Mbps or greater)." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q322",
              label = "If this is a case detection tool: Can animal cases be detected?",
              choices = list(
                "1 - Yes, extensive case-based data is currently collected in accordance with WHO and OIE recommended standards." = 5,
                "2 - Yes, limited data is collected for animal cases." = 3,
                "3 - No animal module exists and it is not possible (or extremely difficult) to add questions related to animal case detection." = 1,
                "NA - Not applicable." =  NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q323",
              label = "If this is a case detection tool: Can human cases / bite cases be detected?",
              choices = list(
                "1 - Yes, extensive case-based data is currently collected in accordance with WHO and OIE recommended standards." = 5,
                "2 - Yes, limited data is collected for human cases." = 3,
                "3 - No human module exists and it is not possible (or extremely difficult) to add questions related to human case detection." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          )
        ),
        fluidRow(
          column(
            width = 4,
            radioButtons( # Future task: Make the label points on new lines
              inputId = "Q324",
              label = "If this is a case detection tool: does it have an IBCM component based on active rabies surveillance LINKING data together about the:\n1) Suspect animal,\n2) Exposed human\n3) Laboratory results,\n4) Quarantine data.",
              choices = list(
                "1 - Yes, extensive details on cases, exposures, quarantine and laboratory results are collected, and data is EASILY LINKED within the tool." = 5,
                "2- Yes, extensive details on cases, exposures, quarantine and laboratory results are collected, but data is NOT EASILY LINKABLE within the tool." = 4,
                "3 - Yes, but not all data elements are represented." = 3,
                "4 - IBCM data elements are collected, but in aggregate form. Relational and line-list data are not possible." = 2,
                "5 - No, this is currently not a feature of the tool." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q325",
              label = "Does the tool send notifications to the user?",
              choices = list(
                "1 - Yes, various communication channels are available." = 5,
                "2 - Yes, one communication channel is available." = 3,
                "3 - No, this is currently not a feature of the tool." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q326",
              label = "Does the tool allow for bi-directional, real-time communication between users and program managers?",
              choices = list(
                "1 - Yes, the tool allows for program managers to push out messages and allows users to reply." = 5,
                "2 - No, this is currently not a feature of the tool." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
        ),
        fluidRow(
          column(
            width = 4,
            textInput(
              inputId = "327",
              label = "What type of data does the tool collect?",
              placeholder = "Please describe the types of data the tool collects here.",
            )
          )
        ),
        
        #### ---- Data Management and Utility ----
        h3("3.3. Data Management and Utility"),
        p("Focuses on the data analysis and outputs provided by the tool."),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q331",
              label = "Does this tool have the capacity to automatically detect anomalies in the data and notify the user? (If this requires human validation/review [manual] then it is not relevant to the tool)",
              choices = list(
                "1 - Yes, validation occurs real-time within the same tool without needing internet connection." = 5,
                "2 - Yes, validation is automated, but occurs post-data collection once an internet connection is available." = 3,
                "3 - No, validation must occur through a separate process" = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q332",
              label = "Does the tool have the capacity to analyze data?",
              choices = list(
                "1 - Yes, comprehensive data analysis is incorporated into the tool." = 5,
                "2 - Yes, but additional tools, software, or minimal technical expertise or funding, are required for comprehensive data analysis." = 3,
                "3 - No. Additional tools, software, or significant technical expertise or funding, are required for comprehensive data analysis." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q333",
              label = "Will the tool generate outputs that can assist with data presentation and/or reporting?",
              choices = list(
                "1 - Yes." = 5,
                "2 - No." = 1 # Make it so that suggested answers for questions 38, 39, and 40 are NA later
              ),
              selected = 0
            )
          )
        ),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q334",
              label = "What type of data outputs does the system provide to visualize collected data? Select how many of the following elements are currently available in the system: 1) Spatio-temporal mapping 2) Graphs 3) Pivot tables 4) Line listed data",
              choices = list(
                "1 - All four key data outputs are available." = 5,
                "2 - Three of the four data outputs are available." = 4,
                "3 - Two of the four data outputs are available." = 3,
                "4 - One of the four data outputs are available." = 2,
                "5 - No data outputs are available within the tool (i.e. a third party software is required to visualize data)." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q335",
              label = "How much time does it take to obtain data outputs once the data has been submitted to the server?",
              choices = list(
                "1 - Less than 1 hour." = 5,
                "2 - Within 24 hours." = 4,
                "3 - Within 1 week." = 3,
                "4 - Within 1 month." = 2,
                "5 - More than 1 month." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q336",
              label = "How easy is it to understand and interpret the outputs?",
              choices = list(
                "1 - Very easy for all readers to understand." = 5,
                "2 - Some technical language." = 3,
                "3 - Highly technical language." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          )
        ),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q337",
              label = "Do the outputs of the tool inform all relevant One Health sectors (human, animal, environment health)?",
              choices = list(
                "1 - Yes, the tool can display aggregate or linked data from multiple sectors." = 5,
                "2 - Yes, aggregated data can be displayed, but additional steps/user inputs are required." = 3,
                "3 - No, the tool cannot display aggregate or linked data from multiple sectors." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          )
        ),
        
        #### ---- Data Storage and Protection ----
        h3("3.4. Data Storage and Protection"),
        p("Focuses on data ownership, protection and storage."),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q341",
              label = "Can you operate the tool independently of the developer? (e.g. server requirements for an app, etc.).",
              choices = list(
                "1 - Yes, the tool can operate optimally without developer inputs." = 5,
                "2 - Yes, the tool has basic functionality without developer input." = 3,
                "3 - No, the tool cannot operate independently of the developer." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q342",
              label = "How is data loaded onto analytic platforms?.",
              choices = list(
                "1 - Data is uploaded automatically once internet connection is available (either during data collection or at a later time point)." = 5,
                "2 - Data is uploaded into a data repository through physical connection with a third-party device (i.e. cord to a computer)." = 3,
                "3 - Data is manually entered into an electronic database (i.e. data manually entered from paper forms)." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q343",
              label = "Who owns and can access the data collected by the tool?",
              choices = list(
                "1 - The government owns the data. Non-governmental stakeholders must request permission to use it." = 5,
                "2 - The government owns the data. Non-governmental stakeholders can use it without prior consent." = 4,
                "3 - The non-governmental stakeholders own the data. The government can use it without prior consent." = 3,
                "4 - The non-governmental stakeholders own the data. The government must request permission to use it" = 2,
                "5 - The government cannot access the collected data" = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          )
        ),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q344",
              label = "How secure is data that has been collected using this tool?",
              choices = list(
                "1 - Data is fully secured: data collected on password protected devices and stored on secured servers or other secured data repository;" = 5,
                "2 - Data security features exist, but could be improved." = 3,
                "3 - Data is not secured: data is collected on easily accessible devices or on paper forms." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          )
        ),
        
        #### ---- Tool Flexibility ----
        h3("3.5. Tool Flexibility"),
        p("Focuses on the interoperability of the tool and its adaptability for use in different contexts or scenarios."),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q351",
              label = "Can the tool be adapted to work with more than just one specific health event/pathogen?",
              choices = list(
                "1 - The tool is already a universal tool for multiple health events/pathogens." = 5,
                "2 - The tool is easily adaptable to 'other use' cases for free or without permission." = 4,
                "3 - The tool is easily adaptable to 'other use' cases at a cost and/or permission is needed." = 3,
                "4 - Significant effort would be required to adapt the tool." = 2,
                "5 - The tool is not adaptable to other health events/pathogens." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q352",
              label = "Is the tool multi-functional? e.g. One tool that can assist with Mass Dog Vaccination tracking and/or post vaccination surveys and/or Integrated Bite Case Management, etc.",
              choices = list(
                "1 - Yes, the tool has multiple functionalities e.g. Mass dog vaccination tracking and IBCM." = 5,
                "2 - No, the tool is single-purpose use e.g. ONLY for mass dog vaccination tracking." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q353",
              label = "What is required to adapt the tool?",
              choices = list(
                "1 - No costs or permissions associated with adapting the tool." = 5,
                "2 - Adaptation requires developer permission, but is generally NOT associated with fees." = 3,
                "3 - Adaptation requires development fees and permission." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          )
        ),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q354",
              label = "Does the tool have the ability to interoperate, work with, and integrate with other surveillance/data systems? (provides framework for data sharing)",
              choices = list(
                "1 - Yes, the format of the outputs/data are widely used formats (e.g. CSV) and universal indicators in-line with global organisations (WHO, OIE) are used." = 5,
                "2 - Some alterations in the format of the data are required, but the indicators are universally accepted (OIE, WHO)." = 3,
                "3 - Unique output file formats are used, making it difficult for data to be easily incorporated into other systems." = 1,
                "NA - Not applicable." = NA
              ),
              selected = 0
            )
          )
        ),
        
        #### ---- Ease of Use and Training Needs ----
        h3("3.6. Ease of Use and Training Needs"),
        p("Focuses on the training requirements, including the level of complexity and difficulty to navigate and understand the tool as well as the technical or operational skillsets that are required to use the tool."),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q361",
              label = "Is data collection reliant on language?",
              choices = list(
                "1 - No, the data collection is primarily based on universal language (e.g. numbers or pictures)." = 5,
                "2 - Yes, the user must be able to read the relevant language to collect data" = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q362",
              label = "What are the training requirements to use the tool?",
              choices = list(
                "1 - End user can implement without external assistance (e.g. user manuals)." = 5,
                "2 - External training is possible but requires remote learning (e.g. shared screen/webinars)." = 3,
                "3 - Face-to-face training of in-country facilitators is required." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q363",
              label = "Have training materials been developed?",
              choices = list(
                "1 - Yes, written instructions and training videos are available." = 5,
                "2 - Yes, but only training videos." = 4,
                "3 - Yes, but only written instructions." = 3,
                "4 - No, but materials are being developed." = 2,
                "5 - No." = 1
              ),
              selected = 0
            )
          )
        ),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q364",
              label = "How easy is it to understand and interpret the manuals/instructions?",
              choices = list(
                "1 - Very easy for all readers to understand." = 5,
                "2 - Some technical language." = 3,
                "3 - Highly technical language." = 1,
                "NA - Not applicable" = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q365",
              label = "How much time does it take to become proficient with the tool?",
              choices = list(
                "1 - Days (up to a week)." = 5,
                "2 - Weeks (up to one month)." = 3,
                "3 - One month or more." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q366",
              label = "Based on user experience, is a dedicated data capturer (in addition to the person undertaking the task; e.g. vaccination) required when using the tool in field conditions?",
              choices = list(
                "1 - No, the tool can be used by the implementer of the action without interfering with or hindering the activity (i.e. the vaccinator also collects the data using the tool)." = 5,
                "2 - No, the tool can be used by the implementer of the action but it hinders the speed and efficiency of the implementer in their task (A dedicated data capturer is recommended)." = 3,
                "3 - Yes, a dedicated data capturer is required to use this tool as it would overtly affect the users efficiency." = 1
              ),
              selected = 0
            )
          )
        ),
        
        #### ---- Sustainability ----
        h3("3.7. Sustainability"),
        p("Focuses on the different scenarios that indicate how sustainable the tool has been and whether it has been thoroughly field-tested for implementation."),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q371",
              label = "Has the tool been proven effective and sustainable for implementation?",
              choices = list(
                "1 - Yes, the tool has been implemented in multi-year projects in multiple countries." = 5,
                "2 - Yes, the tool has been implmented in a multi-year project in one country." = 4,
                "3 - No, the tool has just been launched (less than 1 year) in multiple countries." = 3,
                "4 - No, the tool has just been launched (less than 1 year) in one country." = 2,
                "5 - No, the tool has not yet been field tested." = 1
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q372",
              label = "Does the tool support development of project plans and strategies for rabies control activities?",
              choices = list(
                "1 - Yes, the tool has supported the development of project plans and strategies in multiple countries." = 5,
                "2 - Yes, the tool has supported the development of project plans and strategies in one country." = 3,
                "3 - No, the tool has not yet been field tested." = 1,
                "NA - Not applicable" = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q373",
              label = "Has the tool been implemented with only remote assistance (e.g. sharing instruction materials and online trainings)?",
              choices = list(
                "1 - Yes, in more than one country." = 5,
                "2 - Yes, in one country." = 3,
                "3 - No." = 1,
                "NA - Not applicable" = NA
              ),
              selected = 0
            )
          )
        ),
        fluidRow(
          column(
            width = 4,
            radioButtons(
              inputId = "Q374",
              label = "Has continued use of the tool been observed in project sites AFTER THE EXTERNAL SOURCE (e.g. developer) STOPPED PROVIDING programmatic or financial SUPPORT?",
              choices = list(
                "1 - Yes, in more than one country." = 5,
                "2 - Yes, in one country." = 3,
                "3 - 3 - No, the tool has always required additional external support to be effectively implemented." = 1,
                "NA - Not applicable" = NA
              ),
              selected = 0
            )
          ),
          column(
            width = 4,
            radioButtons(
              inputId = "Q375",
              label = "Has the tool been implemented without any financial support from any external sources? e.g. The government purchases the tool and implements it without any financial support from an external source.",
              choices = list(
                "1 - Yes, in more than one country." = 5,
                "2 - Yes, in one country." = 3,
                "3 - No." = 1,
                "NA - Not applicable" = NA
              ),
              selected = 0
            )
          )
        )
      ),
      
      ### ---- Results Pane UI Contents ----
      column(
        width = 4,
        class = "results-pane",
        h1("UAR Evaluation Matrix"),
        p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        plotOutput("show_barPlot"),
        h3(htmlOutput(outputId = "overall_score")),
        p("Evaluations are performed using the ‘UAR Evaluation Matrix’, a rabies-specific tool evaluation instrument adapted from the FAO-WOAH-WHO Tripartite Surveillance and Information Sharing Operational Tool evaluation process and instrument."),
        fluidRow(
          column(
            width = 12,
            downloadButton(outputId = "downloadFigure",  label = "Download Figure",  icon = icon("save"), style = "margin-top: 10px"),
            downloadButton(outputId = "downloadReport",  label = "Download Report",  icon = icon("save"), style = "margin-top: 10px"),
            downloadButton(outputId = "downloadAnswers", label = "Download Answers", icon = icon("save"), style = "margin-top: 10px")
          )
        )
      )
    ),
    br()
  ),
  
  ## ---- Legal and Data Management ----
  tabPanel(
    title = "Legal and Data Management",
    class = "info-and-legal",
    h1("Legal and Data Management"),
    h2("Legal"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    h2("Data Management"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    h2("Privacy Disclaimer"),
    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  ),
  
  ## ---- Footer UI Contents ----
  footer = tagList(
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
  ## ----
)

# ---- Server ----
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
  
  
  # When users want to add the number of countries, they must first type it,
  # then add to the radioButton list
  observeEvent(
    input$add_number_of_countries, {
      req(input$number_of_countries)
      otherVal <- "other"
      names(otherVal) <- input$number_of_countries
      updatedValues <- c(
        "Developed, no pilot test", "Pilot tested", "Pilot tested, limited use",
        "Frequently used", otherVal
      )
      updateRadioButtons(session, "tool_history_of_use", choices = updatedValues)
    }
  )
  
  
  # First extract the scores of the categories
  accessibility_points <- reactive({c(
    input$Q311, input$Q312, input$Q313, input$Q314, input$Q315, input$Q316)
  })
  data_collection_points <- reactive({
    c(input$Q321, input$Q322, input$Q323, input$Q324, input$Q325, input$Q326, input$Q327)
  })
  data_management_points <- reactive({
    c(input$Q331, input$Q332, input$Q333, input$Q334, input$Q335, input$Q336, input$Q337)
  })
  data_storage_points <- reactive({
    c(input$Q341, input$Q342, input$Q343, input$Q344)
  })
  flexibility_points <- reactive({
    c(input$Q351, input$Q352, input$Q353, input$Q354)
  })
  ease_of_use_points <- reactive({
    c(input$Q361, input$Q362, input$Q363, input$Q364, input$Q365, input$Q366)
  })
  sustainability_points <- reactive({
    c(input$Q371, input$Q372, input$Q373, input$Q374, input$Q375)
  })
  
  scores <- reactive({
    # Find the number of questions in each category that aren't NA responses
    eliblble_categories <- unlist(lapply(
      X = list(
        accessibility_points(), data_collection_points(), data_management_points(),
        data_storage_points(), flexibility_points(), ease_of_use_points(),
        sustainability_points()
      ),
      FUN = function(category){
        return(sum(!is.na(category)))
      }
    ))
    
    # The total number of points you can score is 5 x the number of non-NA
    # responses to questions
    total_point_values <- 5 * eliblble_categories
    
    # Find the weighted scores of each category; defined by the sum of scores
    # divided by the total point values
    category_scores <- 10*c(
      sum(as.numeric(accessibility_points()), na.rm = TRUE),
      sum(as.numeric(data_collection_points()), na.rm = TRUE),
      sum(as.numeric(data_management_points()), na.rm = TRUE),
      sum(as.numeric(data_storage_points()), na.rm = TRUE),
      sum(as.numeric(flexibility_points()), na.rm = TRUE),
      sum(as.numeric(ease_of_use_points()), na.rm = TRUE),
      sum(as.numeric(sustainability_points()), na.rm = TRUE)
    )/total_point_values
    
    return(category_scores)
  })
  
  # Questionnaire Logic Answers
  questionnaire_answers <- reactive({
    
    # Vector with all question numbers. These need to be hard-coded since if not
    # all categories have been answered, then NULL values will break the formatting.
    questions <- c(
      paste0("Q31", 1:6), paste0("Q32", 1:7), paste0("Q33", 1:7), paste0("Q34", 1:4),
      paste0("Q35", 1:4), paste0("Q36", 1:6), paste0("Q37", 1:5)
    )
    
    # Find the questions that have been filled out by the user
    answers_filled <- data.frame(
      "Questions" = questions,
      "Answers" = c(
        accessibility_points(), data_collection_points(), data_management_points(),
        data_storage_points(), flexibility_points(), ease_of_use_points(),
        sustainability_points()
      )
    )
    
    # Initialize (assume) all questions have not been filled. Find which answers
    # were filled then add them to the "answers" data frame, appending a preceding
    # column of question numbers.
    answers <- rep(x = NA, times = length(questions))
    answers[match(answers_filled$Questions, questions)] <- answers_filled$Answers
    answers <- data.frame("Questions" = questions, "Answers" = answers)
    return(answers)
  })
  
  reactive({print(questionnaire_answers())})
  
  # Results figure logic
  barPlot <- reactive({
    par(mar = c(5, 8, 1, 1), las = 1, xpd = TRUE)
    plot.new()
    barplot(
      height = rev(scores()),
      names.arg = rev(c(
        "Accessibility", "Data Collection", "Data Management", "Data Storage",
        "Flexibility", "Ease of Use", "Sustainability"
      )),
      horiz = TRUE, xlab = "", ylab = "", xlim = c(0, 10), border = NA,
      xaxp = c(0, 10, 10), # Plot from 0 to 10 inclusive with 10 tick marks,
      col = rev(c(
        UARF_BLUE1, UARF_RED, UARF_BLUE2, UARF_BLUE3, UARF_GREEN, UARF_YELLOW,
        UARF_GREEN2
      )),
    )
    mtext(
      substitute(paste(bold("Weighted score (out of ten)"))), side = 1, line = 3,
      col = UARF_BLUE1, cex = 1.2
    )
    text(
      substitute(paste(bold("Category"))), col = UARF_BLUE1, x = 0, pos = 2,
      offset = 1, y = 8.5
    )
    recordPlot()
  })
  
  # This actually plots it to the Shiny App window
  output$show_barPlot <- renderPlot({barPlot()})
  
  # This prints the overall score text
  output$overall_score <- renderText({
    overall_score_value <- 10*round(mean(scores()), 2)
    paste0(
      "Total Score: <b>",
      ifelse(
        test = is.nan(overall_score_value),
        yes = "TBD</b>",
        no = paste0(overall_score_value, "%</b>") 
      )
    )
  })
  
  # Download button logic
  output$downloadFigure <- downloadHandler(
    filename = function(){"Bar_Plot.svg"},
    content = function(file){
      svg(filename = file, width = 8, height = 4)
      replayPlot(barPlot())
      dev.off()
    }
  )
  output$downloadReport <- downloadHandler(
    filename = "SISOT-R_Report.pdf",
    content = function(file){
      # Copy the report file to a temporary directory before processing it, in
      # case we don't have write permissions to the current working directory.
      temp_report <- file.path(tempdir(), "SISOT-R_Report.pdf")
      file.copy("report_template.rmd", temp_report, overwrite = TRUE)
      # Knit the document, and eval it in the current environment
      rmarkdown::render(temp_report, output_file = file)
    }
  )
  output$downloadAnswers <- downloadHandler(
    filename =  function(){"Answers.csv"},
    content = function(file) {
      write.csv(questionnaire_answers(), file, row.names = FALSE)
    }
  )
}

shinyApp(ui, server)

# ============================================================================ #
# United Against Rabies Forum WG1 Tool - Code End                              |
# ============================================================================ #