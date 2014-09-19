library(htmltools)
library(pipeR)

tagList() %>>%
  tags$h1(
    "Make that shiz ",
    tags$a(href = "", "dRaggable")
  )%>>%
  html_print()