shinyUI(fluidPage(
  titlePanel(
    HTML("Ronak Shah")
    ),
  
  sidebarLayout(position = "right",
                sidebarPanel( HTML ("
                  <h3>Projects Worked </h3>
                  <br /> <br />
                  <div style = 'text-align: left;'>
                  <ul>
                  <li>Clustering users based on their power usage</li>
                  <li>Legal Summarization</li>
                  <li>Movie Business Estimator</li>
                  <li>Handwritten Script Recognition using Neural Network</li></ul></div>"
                  )),
                mainPanel(
                  img(src = "Ronak.jpg",  height = 200, width = 150), 
                  br() ,br(), 
                  HTML("<h3>Employment : </h3>"), 
                  HTML("<strong><h4>Binary.com : Quantitative Analyst </h4></strong>"),
                  br(), br(),
                  HTML("<p>Connect with <b>Ronak </b> :</p>"),
                  br(), br(), 
                  HTML("<a href ='https://twitter.com/shahronak47'>
                       <img src='twitter.png',  height = 50, width = 50></img></a>
                       <a href ='https://facebook.com/shahronak47'>
                       <img src='facebook.png',  height = 50, width = 50></img></a>
                       <a href ='https://stackoverflow.com/users/3962914/ronak-shah'>
                       <img src='so-icon.png',  height = 50, width = 50></img></a>
                       <a href ='https://in.linkedin.com/in/shahronak47'>
                       <img src='LinkedIn_logo_initials.png',  height = 50, width = 50></img></a>
                        <a href ='https://github.com/shahronak47'>
                       <img src='GitHub-Mark.png',  height = 50, width = 50></img></a>
                        <a href ='https://www.quora.com/profile/Ronak-Shah-96'>
                       <img src='quora_icon.png',  height = 50, width = 50></img></a>
                       ")
                  
                )
  )
))