library(stackr)
library(rvest)
library(dplyr)
library(xml2)
library(XML)
library(httr)
library(faq)

shinyServer(function(input, output) {
  #Get top 30 (1 page) answers of user 3962914 (me)
  df <- stack_users(3962914, "answers")
  #Get top 6 Questions from quesion id's
  questions_df <- stack_questions(head(df$question_id))
  #We need URL in this format https://stackoverflow.com/a/answer_id
  answer_url_links <-  paste0("https://stackoverflow.com/a/", head(df$answer_id))
  #text - questions_df$title and url - answer_url_links
  
  output$answer_so_links <- renderUI({
    HTML(c("<ul>",paste0("<li><a href= ", answer_url_links, ">", questions_df$title, "</a></li>"), "</ul>"))
  })
  
  # #Add quora link to extract recent answers
  # quora_link <- "https://www.quora.com/profile/Ronak-Shah-96"
  # 
  # #Get URLs for recent answers
  # quora_answer_URLs <- quora_link %>%
  #         read_html() %>% 
  #         html_nodes(xpath = '//*[@class="answer_permalink"]') %>% 
  #         html_attr("href") %>%
  #         paste0("https://www.quora.com", .) %>%
  #         head()
  # 
  # 
  # #Get text for questions
  # quora_question_text <- quora_link %>%
  #   read_html() %>% 
  #   html_nodes(xpath = '//*[@class="question_link"]') %>% 
  #   html_text() %>%
  #   head()
  # 
  # output$answer_quora_links <- renderUI({
  #   HTML(c("<ul>",paste0("<li><a href= ", quora_answer_URLs, ">", quora_question_text, "</a></li>"), "</ul>"))
  # })
  # 
  #Get wordpress blog link
  wordpress_link <- "https://shahronak47.wordpress.com/blog/"
  
  wordpress_title <- wordpress_link %>%
      read_html() %>%
      html_nodes("h2.entry-title") %>%
      html_text() %>%
      head() %>%
      encodeString() %>% #Remove the specific encoding 
      gsub("\\u00a0", " ", .)
  
  wordpress_url <- wordpress_link %>%
    read_html() %>%
    html_nodes("h2.entry-title a") %>%
    html_attr("href") %>%
    head() %>% #Remove the last "/" in the URL 
    sub("\\/$", "", .)
  
  output$answer_wordpress_links <- renderUI({
    HTML(c("<ul>",paste0("<li><a href= ", wordpress_url, ">", wordpress_title, "</a></li>"), "</ul>"))
  })
  
  
  #Get tumblr posts
  tumblr_link <- "http://shahronak47.tumblr.com/"
  
  tumblr_title <- tumblr_link %>%
    read_html() %>%
    html_nodes("section h2 a") %>%
    html_text() %>%
    head()
  
  
  tumblr_url <- tumblr_link %>%
    read_html() %>%
    html_nodes("section h2 a") %>%
    html_attr("href") %>%
    head()
  
  output$answer_tumblr_links <- renderUI({
    HTML(c("<ul>",paste0("<li><a href= ", tumblr_url, ">", tumblr_title, "</a></li>"), "</ul>"))
  })
  
  #Video tab
  #Render FAQ
  output$video_faq <- renderFaq({
    faq(read.csv('youtube_video_list.csv'), faqtitle = "Video List")
  })
})





#To update video
#data <- GET("https://www.googleapis.com/youtube/v3/search?key={API_key}&channelId=UCv3be7W260HXd2BoK9KihMQ&part=snippet,id&order=date&maxResults=30")
#tmp <- content(data)
#results <- do.call(rbind, lapply(tmp$items, function(x) if(x$id$kind == "youtube#video") data.frame(question = x$snippet$title,answer = x$id$videoId)))
#results$answer <- sprintf('<iframe width="560" height="315" src="https://www.youtube.com/embed/%s" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', results$answer)
#write.csv(results, 'youtube_video_list.csv', row.names = FALSE)
