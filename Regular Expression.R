# Regular Expression

text <- "Hi there, do you know who you are voting for?"
text2 <- "No, I have no idea."

#Check whether the text contains the words we want.
grepl('voting', text)                 # TRUE
grepl('cat', text)                    # FALSE

grepl('do you', text)                 # TRUE

v <- c('a', 'b', 'c', 'd', 'e', 'b')
grepl('c', v)                         # FALSE FALSE TRUE FALSE FALSE

two_text <- c(text, text2)
grepl('do you', two_text)             # TRUE, FALSE

# Return the position of the word we search
grep('b', v)                          
