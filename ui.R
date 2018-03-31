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
                  HTML("<h3>Employment and Job Responsibilities: </h3>"), 
                  HTML("<strong><h4> Binary.com : Quantitative Analyst </h4></strong>"),
                  HTML("<p><ul><li> Building various tools and techniques to monitor live prices. One such tool fetched prices from competitor's website and compared with our prices. Another one was a report 
                       generation tool which reduced the time from 30 mins everyday to a minute only.</li></p>
                       <p><li> Adjusting commisions and prices according to the daily economic events worldwide</li></p></ul>"),
                  br(),
                  HTML("<strong><h4> SourceHOV : Data Scientist </h4></strong>"),
                  HTML("<p><ul><li> Legal summarization - Extracting relevant information and summarize the legal judgements..</li></p>
                       <p><li>Forecasting Power Usage - Using unsupervised learning to divide the customers into different clusters based on their power consumption. </li></p></ul>"),
                  br(),
                  HTML("<strong><h4> Silicus Technologies : Software Engineer </h4></strong>"),
                  HTML("<p><ul><li>.	Worked in building a web application using different web technologies, handling the front end as well as backend. Used various languages/web technologies/frameworks including JavaScript, C#, jQuery, angularJS, .NET, SQL etc.</li></p>
                       <p><li> .	Wrote unit tests, handled various server side and client-side validations as well. </li></p></ul>"),
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