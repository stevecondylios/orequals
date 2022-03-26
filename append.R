


# Demonstrating class methods E.g. print having a different effect on an object of class xml_nodeset
# than for object of class string. 
# Another example of class method (slice()): https://stackoverflow.com/a/59221761/

# Ruby's << would be handy when creating the 'titles' object
# It could be much more expressive, terse, readable and elegant if << were possible in R
# Q: can we write such a function? 

library(tidyverse)
library(rvest)

titles <- ""; for(i in 1:25){ a <- paste0(a, paste0("<h1>Title ", i, "</h1>"))}

web <- paste0("<html><head></head><body><",
              titles,
              "</body></html>")

web %>% 
  read_html %>% 
  html_nodes("h1") %>% 
  print

something <- rep("hi there", 25)

print(something)






