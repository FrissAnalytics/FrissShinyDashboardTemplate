rm(list = ls())

library(shiny)
library(shinydashboard)

# see also https://almsaeedstudio.com/preview
# http://stackoverflow.com/questions/31711307/how-to-change-color-in-shiny-dashboard

# Friss dashboard header
FrissHeader <- function(){tags$head(
  tags$link(rel = "stylesheet", type = "text/css", href = "app.css"),
  tags$img(src="friss_small1.svg" , id = "FrissLogo"),
  tags$img(src="friss_subtext.svg", id = "FrissLogoText"),
  singleton(includeScript("www/d3.js")),
  singleton(includeScript("www/underscore.js")),
  singleton(includeScript("www/jquery-ui.js")),
  singleton(includeCSS("www/app.css"))
)}
