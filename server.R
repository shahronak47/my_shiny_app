library(stackr)
shinyServer(function(input, output) {
  #Get top 30 (1 page) answers of user 3962914 (me)
  df <- stack_users(3962914, "answers")
  #Get top 6 Questions from quesion id's
  questions_df <- stack_questions(head(df$question_id))
  #We need URL in this format https://stackoverflow.com/a/answer_id
  answer_url_links <-  paste0("https://stackoverflow.com/a/", head(df$answer_id))
  #text - questions_df$title and url - answer_url_links
  
  output$answer_url_links <- renderUI({
    HTML(paste0("<a href= ", answer_url_links, ">", questions_df$title, "</a>"))
  })
  
})

