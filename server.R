library(stackr)
library(rvest)
library(dplyr)
shinyServer(function(input, output) {
  #Get top 30 (1 page) answers of user 3962914 (me)
  df <- stack_users(3962914, "answers")
  #Get top 6 Questions from quesion id's
  questions_df <- stack_questions(head(df$question_id))
  #We need URL in this format https://stackoverflow.com/a/answer_id
  answer_url_links <-  paste0("https://stackoverflow.com/a/", head(df$answer_id))
  #text - questions_df$title and url - answer_url_links
  
  output$answer_so_links <- renderUI({
    HTML(c("<ul>",paste0("<li><a href= ", answer_url_links, ">", questions_df$title, "</a>", "</li>"), "</ul>"))
  })
  
  #Add quora link to extract recent answers
  quora_link <- "https://www.quora.com/profile/Ronak-Shah-96"
  
  #Get URLs for recent answers
  quora_answer_URLs <- quora_link %>%
    read_html() %>% 
    html_nodes("[class='answer_permalink']") %>% 
    html_attr("href") %>%
    paste0("https://www.quora.com", .) %>%
    head()
  
  #Get text for questions
  quora_question_text <- quora_link %>%
    read_html() %>% 
    html_nodes("[class='question_link']") %>% 
    html_text() %>%
    head()
  
  output$answer_quora_links <- renderUI({
    HTML(c("<ul>",paste0("<li><a href= ", quora_answer_URLs, ">", quora_question_text, "</a>", "</li>"), "</ul>"))
  })
  
})