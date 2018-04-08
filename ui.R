shinyUI(fluidPage(
  titlePanel(
    HTML("Ronak Shah")
    ),
  
  sidebarLayout(position = "right",
                sidebarPanel( HTML ("
                <a class='twitter-timeline'  href='https://twitter.com/shahronak47' data-widget-id='548718237639122944'>Recent tweets by @shahronak47</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>
                                                 
            <a href='https://twitter.com/intent/tweet?screen_name=shahronak47&ref_src=twsrc%5Etfw' class='twitter-mention-button' data-show-count='false'>Tweet to @shahronak47</a>
            <script async src='https://platform.twitter.com/widgets.js' charset='utf-8'></script>"
                  )),
                mainPanel(
                  img(src = "Ronak.jpg",  height = 200, width = 150), 
                  br() ,br(), 
                  HTML("<h3>Employment and Job Responsibilities: </h3>"), 
                  #Employment 1
                  HTML("<strong><h4> Binary.com : Quantitative Analyst </h4></strong>"),
                  HTML("<p><ul><li> Building various tools and techniques to monitor live prices. One such tool fetched prices from competitor's website and compared with our prices. Another one was a report 
                       generation tool which reduced the time from 30 mins everyday to a minute only.</li></p>
                       <p><li> Adjusting commisions and prices according to the daily economic events worldwide</li></p></ul>"),
                  br(),
                  #Employment 2
                  HTML("<strong><h4> SourceHOV : Data Scientist </h4></strong>"),
                  HTML("<p><ul><li> Legal summarization - Extracting relevant information and summarize the legal judgements..</li></p>
                       <p><li>Forecasting Power Usage - Using unsupervised learning to divide the customers into different clusters based on their power consumption. </li></p></ul>"),
                  br(),
                  #Employment 3
                  HTML("<strong><h4> Silicus Technologies : Software Engineer </h4></strong>"),
                  HTML("<p><ul><li>. Worked in building a web application using different web technologies, handling the front end as well as backend. Used various languages/web technologies/frameworks including JavaScript, C#, jQuery, angularJS, .NET, SQL etc.</li></p>
                       <p><li> .	Wrote unit tests, handled various server side and client-side validations as well. </li></p></ul>"),
                  sidebarPanel(
                  #Display SO answers
                  HTML("<a href ='https://stackoverflow.com/users/3962914/ronak-shah'>
                    <img src='so-icon.png',  height = 40, width = 50></img></a> &ensp;
                       <font size = '4'><b>Recent SO Answers</b></font>"),
                  br(),
                  HTML("&ensp;&ensp;&ensp;"),
                  htmlOutput("answer_so_links"), width = 6
                  ),
                  HTML("<p><b>You can also connect with me on other platforms :</b></p>"),
                  br(), br(), 
                  HTML("<a href ='https://facebook.com/shahronak47'>
                       <img src='facebook.png',  height = 50, width = 50></img></a>
                       <a href ='https://in.linkedin.com/in/shahronak47'>
                       <img src='LinkedIn_logo_initials.png',  height = 50, width = 50></img></a>
                        <a href ='https://github.com/shahronak47'>
                       <img src='GitHub-Mark.png',  height = 50, width = 50></img></a>
                        <a href ='https://www.quora.com/profile/Ronak-Shah-96'>
                       <img src='quora_icon.png',  height = 50, width = 50></img></a>
                        <a href ='https://shahronak47.wordpress.com/blog/'>
                       <img src='wordpress_logo.png',  height = 50, width = 50></img></a>
                       ")
                  
                )
  )
))