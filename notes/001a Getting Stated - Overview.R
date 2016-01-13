#' What is R?
#' 
#' Why use it?
#' - A great tool for data analysis
#' - It's free and open source
#' - Widely used in industry, academic, government, maths and statistics, 
#' - Designed with analysts
#' - It's interactive and has batch mode for routine production tasks
#' - It has a huge set of packages, extra tools and functionality
#' - It works with RStudio
#' 


#' Alternatives to R
#' - SAS
#' - SPSS
#' - MatLab (plus open-source octave and julia)
#' - STATA
#' Python
#' - Huge community of engineers and beginner learners
#' - elegant and clean language
#' - relative easy to integrate your work in existing production systems. 


################################################################################
#' The R Console
#' 
#' ">" input
#' 
#' "[...]" brackets, indexing output
c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19)
1:100

#' "+" carry over to next line. 
(12 + 5
)

# use ";" semi colon to combine multiple seperate operations into one line. 
1 + 1
1 + 2 ; 5 + 6

#' "Ctrl + l" to clear your console

#' "esc" to clear your input line

#' In the console, use keyborad "up arrow" to scroll gthrough your previous inputs 

# "#" pound / hash for comments
1 + 1 # one a line, everthing after the pound is ignored. 

#' #' hash + apostrophe, in RStudio (not r) allows for multi line comment. 
#'  
#'  


################################################################################
#' Assignment
#' - R and Objects - In R, basically everything is an option, 
#' - value, data-frames, vectors, lists, fuctions, all objects
#' Object: mapping of "data" to a "name
#' Use the "<-" assignment operators. 

{
  # Plot works differently depending on the class of your data
  
  # plot a vector
  plot(
    c(1,2,3,4,5,6,7)
    )
  
  # plot a time series data.frame
  plot(
    data.frame(
      date  = c(1:10,5.5,4.5),
      Value = c(5,6,5,4,6,8,9,3,4,8,5,5) 
    )
  )
  
  #plot a regression
  plot(
    lm(
      Value ~ date,
      data =  data.frame(
        date  = c(1:10,5.5,4.5),
        Value = c(5,6,5,4,6,8,9,3,4,8,5,5) 
      )
    )
  )

}

# Creating an object in R
# Assignment 
#' Object: mapping of "data" to a "name
#' Use the "<-" assignment operators. 

x <- 1
x =  1

#  {name} {assigned to} {data}
     x          <-         1
x
     
# Object naming rules
#' Names are case sensitive
x <- 1
x # lowercase x
X # uppercase X

# Overwriting values
#' we are free to overwrite values
x  <- 1
x
x <- 2
x
     
# Value updating
y <- 1
y
x <- y + 1
x
y <- 2
x

# Object Does Exist
x + y + z + 1
# Error: object 'z' not found


# Object naming rules
#' 1. objects need to start with a letter (UPPER or lower)
#' 2. they may follow by any letter, number, "." or "_"
#' 3. no special characters
#' ^ !@#$%^&*()|' "  {white space}

y.2 <- y + 1
y.3 <- y.2 + 3

################################################################################
#' Working with function
#' quick intro to function calls

mean(
  rnorm(100)^2
)

# 1. function arguments are passed to function inside parentheses. 
# 2. get documentation about your function with "?{function name}
# 3. you can combine many function
# 4. you can create functions. 
mean.of.sqrd <- function(x){
  mean(x^2)
}     

mean.of.sqrd(rnorm(100))





















