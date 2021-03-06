library(shinydashboard)
library(dashboardthemes)

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("About Me", tabName = "aboutme", icon = icon("adn")),
    menuItem("Side Projects", icon = icon("code"), tabName = "SideProjects"),
    menuItem("Employment and Education", icon = icon("file"), tabName = "EmploymentandEducation"),
    menuItem("Other Projects", icon = icon("umbrella"), tabName = "OtherProjects"),
    menuItem("Contact Me", icon = icon("phone"), tabName = "ContactMe"), 
    menuItem("Videos", icon = icon("youtube"), tabName = "videos")
  )
)

body <- dashboardBody(
  shinyDashboardThemes(
    theme = "poor_mans_flatly"
  ),
  
  tabItems(
    tabItem(tabName = "aboutme",
            
            sidebarLayout(position = "right",
                          #Add twitter timeline and follow button
                          sidebarPanel(HTML ("
                                             <a class='twitter-timeline'  href='https://twitter.com/shahronak47' data-widget-id='548718237639122944'>Recent tweets by @shahronak47</a>
                                             <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>
                                             
                                             <a href='https://twitter.com/intent/tweet?screen_name=shahronak47&ref_src=twsrc%5Etfw' class='twitter-mention-button' data-show-count='false'>Tweet to @shahronak47</a>
                                             <script async src='https://platform.twitter.com/widgets.js' charset='utf-8'></script>"
                          )),
                          #Employment Details
                          mainPanel(
                            div(style="text-align:center;",
                                img(src = "Ronak1.png",  height = 250, width = 250)), 
                            br() ,br(),
                            HTML("<div style='text-align: justify;text-align-last: center;font-size:18px;', <p>Hi, My name is Ronak. I am from Pune, India. I enjoy coding especially in R. 
<br/> I am currently working as freelancer and I’m always looking for cool #rstats project to be part of. 
<br/> I have answered more than 10000 questions on stack overflow. 
                                 <br/><br/>I’m married and my hobbies include gardening, listening to podcasts and reading books.
                                 </p></div>"),
                            
                            br(),
                            sidebarPanel(
                            #Display SO answers
                            HTML("<div  style =  'text-align: center'><a href='https://stackoverflow.com/users/3962914/ronak-shah'>
                                 <img src='https://stackoverflow.com/users/flair/3962914.png' width='208' height='58' alt='profile for Ronak Shah at Stack Overflow.' title='profile for Ronak Shah at Stack Overflow.'></a></div>
                                 <br />
                                 <a href ='https://stackoverflow.com/users/3962914/ronak-shah'>
                                 <img src='so-icon.png',  height = 40, width = 50></img></a> &ensp;
                                 <font size = '4'><b>Recent Stack Overflow Answers</b></font>
                                 
                                 "),
                            br(),
                            HTML("&ensp;&ensp;&ensp;"),
                            htmlOutput("answer_so_links"), width = 6
                            ), 
                            
                            #Buy me a coffee widget
                            sidebarPanel(
                              HTML('<style>.bmc-button img{height: 34px !important;width: 45px !important;margin-bottom: 1px !important;box-shadow: none !important;border: none !important;vertical-align: middle !important;}.bmc-button{padding: 7px 15px 7px 10px !important;line-height: 35px !important;height:51px !important;text-decoration: none !important;display:inline-flex !important;color:#FFFFFF !important;background-color:#FF813F !important;border-radius: 8px !important;border: 1px solid transparent !important;font-size: 18px !important;letter-spacing:0.6px !important;box-shadow: 0px 1px 2px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;margin: 0 auto !important;font-family:"Arial", cursive !important;-webkit-box-sizing: border-box !important;box-sizing: border-box !important;}.bmc-button:hover, .bmc-button:active, .bmc-button:focus {-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;text-decoration: none !important;box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;opacity: 0.85 !important;color:#FFFFFF !important;}</style><link href="https://fonts.googleapis.com/css?family=Arial" rel="stylesheet"><a class="bmc-button" target="_blank" href="https://www.buymeacoffee.com/shahronak47"><img src="https://cdn.buymeacoffee.com/buttons/bmc-new-btn-logo.svg" alt="Buy me a coffee"><span style="margin-left:5px;font-size:18px !important;">Buy me a coffee</span></a>'),
                            width = 6), 
                            br(),br(),br(),br(),br(),br(),
                            #Freshgrads link
                            sidebarPanel(
                            HTML("<font size = '4'><b> Featured on FreshGrads.info</b></font><br/><br/>
                                 <a href = 'https://www.freshgrads.info/post/meet-ronak-shah-who-reached-1m-people-on-stack-overflow/'>Meet Ronak Shah who reached 1 million people on Stack Overflow</a>"), 
                            width = 6)
                            )
                          )
                          
    ),
    tabItem(tabName = "EmploymentandEducation",
                        #Employment Details
                        #mainPanel(
                          HTML("<h3>Employment and Job Responsibilities: </h3>"), 
                          #Employment 1
                          HTML("<strong><h4> Binary.com : Quantitative Analyst </h4></strong>"),
                          HTML("<p><ul><li> Duration : May 2017 - Oct 2020 </li>
<li> Building various pricing models to price different contracts. Suggesting various modification in the current models as well.</li>
                               <li> Building innovative and exclusive products for our clients. Verifying they are mathematically correct without any possibility of exploit.</li>
                              <li>Building dashboards to monitor various KPI's. (Key performace indicato)
                               </p></ul>"),
                          br(),
                          #Employment 2
                          HTML("<strong><h4> SourceHOV : Data Scientist </h4></strong>"),
                          HTML("<p><ul><li> Duration : July 2016 - Mar 2017 </li>
<li> Legal summarization - Extracting relevant information and summarize the legal judgements..</li>
                               <li>Forecasting Power Usage - Using unsupervised learning to divide the customers into different clusters based on their power consumption. </li></p></ul>"),
                          br(),
                          #Employment 3
                          HTML("<strong><h4> Silicus Technologies : Software Engineer </h4></strong>"),
                          HTML("<p><ul> <li> Duration : July 2014 - June 2016 </li>
<li> Worked in building a web application using different web technologies, handling the front end as well as backend. Used various languages/web technologies/frameworks including JavaScript, C#, jQuery, angularJS, .NET, SQL etc.</li>
                               <li> Wrote unit tests, handled various server side and client-side validations as well. </li></p></ul>"),
                          
                          #Education Details : 
                          HTML("<h3>Education: </h3>"), 
                          HTML("<strong><h4> M.Tech from BITS, Pilani </h4></strong>"),
                          HTML("<ul>
                               <li> Duration - August 2015 - May 2017 </li>
                               <li> 	M.Tech in Software Systems with specialization in Data Analytics. This was a Work Integrated Learning Program (WILP) which was designed especially for working professionals. </li>
                               <li> CGPA of 7.2 </li>
                               <li> Coursework included: Artificial Systems, Machine Learning, Data Mining, Data Storage Technology and Network, Database Design and Applications, Information Retrieval, Data structure and Algorithms and Object Oriented Analysis and Design. </li> </ul>
                               "),
                          br(),
                          HTML("<strong><h4> B.E from Pune University </h4></strong>"),
                          HTML("<ul>
                               <li> Duration - July 2009 - June 2013 </li>
                               <li> B.E in computer engineering passed with first class.  </li>
                               <li> Final year project on handwritten script recognition using neural network in Java. </li>
                               "),
                          br()
             
            
    ),
    
    tabItem(tabName = "SideProjects",
            br(),
            p("In my free time I work on projects which help improve my skill and make my life easier. This website is result of one such side project. 
              Below are the list of some of my personal projects that I have worked on."),
            h2("bsetools"),
            HTML("<ul>
                  <li>A python package which gives live stock prices from Bombay Stock Exchange. </li>
                  <li> The package was released to <a href= 'https://pypi.org/project/bsetools/'>PyPI</a> and the code is hosted on <a href = 'https://github.com/shahronak47/bsetools'> GitHub </a> </li>
                  </ul>
                   "),
            h2("bsedata"), 
            HTML("<ul>
                  <li> This was made on top of bsetools. This project uses bsetools get stock prices of stocks mentioned in csv. </li>
                   <li> It then generate a nice table showing current profit/loss on that particular stock and sends daily email to my email address. </li>
                   <li> The code for the same is also hosted on <a href = 'https://github.com/shahronak47/bsedata'> Github </a> </li>
                 </ul>
                 "),
            h2("YouTube Videos"), 
            HTML("<ul>
                 <li> I realised that R is a little difficult for beginners to get hold of. </li>
                 <li> To help them I started making <a href = 'https://www.youtube.com/shahronak47'> YouTube videos </a>explaining some basic functions and concepts in R. </li>
                 <li> While doing that it helped me as well to revisit the old concepts in more depth and helped me in my understanding of the language.</li>
                 </ul>
                 "),
            h2("Bots"),
            HTML("<ul>
                  <li> <a href = 'https://twitter.com/rstatsbot1234'>@rstatsbot1234</a> retweets tweets from #rstats </li>
                 <li> <a href = 'https://twitter.com/wakeupwithsmile'>@wakeupwithsmile</a>  wishes good morning to random people.</li>
                  <li> Code for both the bots can be found on <a href = 'https://github.com/shahronak47/TwitterBot'> Github </a> </li>
                  <li> I had also created a messenger bot which answer questions about me. <a href = 'https://github.com/shahronak47/MessengerBot'> Code </a> and <a href = 'https://shahronak47.wordpress.com/2018/11/22/a-bot-that-answers-questions-about-me/'> blog </a> can be found online .</li>
                </ul>
                 "),
            h2("Project Euler"),
            HTML("<ul>
                 <li> I like solving competitve and challenging problems. I have solved around 50+ <a href = 'https://projecteuler.net/'>Project Euler</a> problems </li>
                 <li>I have also written blog posts for each problem solved describing how I approached the problem, what were the difficulties I faced and how I arrived at the soluton . </li>
                <li> The code for all the Project Euler problem <a href = 'https://github.com/shahronak47/Project-Euler'>you know from where to get on</a> ;-) </li>
                 </ul>")
    ), 
    tabItem(tabName = "OtherProjects",
              p("I have worked on few random projects as well"),
            h2("Fetch tweets and display it on a static site using blogdown"),
            HTML("<ul>
                 <li> In this project we fetched the tweets with images and display it on a static site on blogdown</li>
                 <li>The site was deployed on Netlify using continuous integration with Github. </li>
                <li> More details of the project can be found on <a href = 'https://shahronak47.wordpress.com/2018/07/12/fetch-tweets-and-display-it-on-static-site/'>my blog</a></li>
              </ul>
                 "), 
            h2("Scrape prices from table on NSE website"),
            HTML("<ul>
                 <li>Prices for 220 stocks were scraped from NSE website. All the URL's were different for those 220 stocks and were generated on the fly.</li>
                 <li>Lot of data cleaning and processing was done to extract relevant data.</li>
                 <li>More details can be found on <a href = 'https://shahronak47.wordpress.com/2018/07/29/scrape-option-prices-from-nse-website/'>my blog</a></li>
                  </ul>
                 ")
    ),
    tabItem(tabName = "ContactMe",
            sidebarPanel(
              HTML("<font size = '4'><b>Recent technical blogs </b></font>
                    <a href ='https://shahronak47.wordpress.com/blog/'>
                   <img src='wordpress_logo.png',  height = 30, width = 30></img></a>
                   "),
              br(),
              HTML("&ensp;&ensp;&ensp;"),
              htmlOutput("answer_wordpress_links"),  width = 6
              ),
              
            sidebarPanel(
              HTML("<font size = '4'><b>Few personal blogs </b></font>  &ensp;&ensp;&ensp;
                  <a href ='http://shahronak47.tumblr.com/'>
                 <img src='tumblr-logo.png',  height = 50, width = 50></img></a>"),
              htmlOutput("answer_tumblr_links"),
                width = 6
              ),
            
         
            HTML("<b>Web presence :</b>"),
            HTML("<a href ='https://twitter.com/shahronak47'>
                 <img src='twitter.png',  height = 50, width = 50></img></a>
                 <a href ='https://in.linkedin.com/in/shahronak47'>
                 <img src='LinkedIn_logo_initials.png',  height = 50, width = 50></img></a>
                 <a href ='https://github.com/shahronak47'>
                 <img src='GitHub-Mark.png',  height = 50, width = 50></img></a>
                 <a href ='https://www.quora.com/profile/Ronak-Shah-96'>
                 <img src='quora_icon.png',  height = 50, width = 50></img></a>
                 <a href ='https://stackoverflow.com/users/3962914/ronak-shah'>
                 <img src='so-icon.png',  height = 40, width = 50></img></a>
                <a href ='https://www.youtube.com/shahronak47'>
                 <img src='youTube.png',  height = 40, width = 50></img></a>
                 <a href ='https://shahronak47.wordpress.com/blog/'>
                  <img src='wordpress_logo.png',  height = 30, width = 30></img></a>
                  <a href ='http://shahronak47.tumblr.com/'>
                 <img src='tumblr-logo.png',  height = 50, width = 50></img></a>
                 "),
                HTML("&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;"),
              
              #br(), br(),
              #br(), br(),
            
            #Add contact me form
            HTML('<font size = 5><b><a href = "https://forms.gle/XcVoWwuVmc4rPspB8">CONTACT ME!</a></b></font>')

    ), 
    #Youtube Videos
    tabItem(tabName = "videos",
      faqOutput('video_faq')
    )
  )
)

# Put them together into a dashboardPage
dashboardPage(
  dashboardHeader(title = "Ronak Shah"),
  sidebar,
  body
)
