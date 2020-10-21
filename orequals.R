

# OrEquals will return the left hand side value if it exists, otherwise the right hand side value


'%orequals%' <- function(x, y) {
  if(exists("x")) { x }
}



x %orequals% 10
# Error in x %orequals% 10 : object 'x' not found





'%orequals%' <- function(...) {
  if(exists("x")) { x }
}


x %orequals% 10










tryShow <- function(arg) {
  tryCatch(arg, error = function(e) { })
}

sapply(c(10, "a", sym("hi")), tryShow)

# [[1]]
# [1] 10
# 
# [[2]]
# [1] "a"
# 
# [[3]]
# hi


tryShow(x)


library(purrr)


'%orequals%' <- function(...) {
  map(..., tryShow)
  #sapply(arguments, tryShow)
}


x %orequals% 10









# https://stackoverflow.com/questions/22309285/how-to-use-a-variable-to-specify-column-name-in-ggplot
select_col <- sym("Petal.Length")

iris %>% 
  ggplot(aes(x = Sepal.Length, y = !!select_col)) +
  geom_point()





