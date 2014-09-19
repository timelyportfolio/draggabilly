library(htmltools)
library(pipeR)

tagList(
  tags$div(id = "draggable_h1"
   ,tags$h1( 
      "Make that shiz "
      , tags$a(href = "http://draggabilly.desandro.com", "dRaggable")
   )
  )
  ,tags$script(
"
window.onload = function() {

  var dh1 = document.getElementById('draggable_h1');
  var drag1 = new Draggabilly( dh1 );
}
"  %>>% HTML
  )
)  %>>%
  attachDependencies(
    htmlDependency(
      name="dragabilly"
      , version="1.0"
      , src=c("file"=paste0(getwd(),"./dist"))#,"href"="http://d3js.org/")
      , script="draggabilly.pkgd.js"
    )
  ) %>>%
  html_print()