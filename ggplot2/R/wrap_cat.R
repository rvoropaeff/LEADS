wrap_cat <-
function(text, width = 80) 
  {wrapped_text <- str_wrap(text, width)
  cat(wrapped_text, "\n")}
