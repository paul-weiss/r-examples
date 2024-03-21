# examples.R
#------------------------------------------------------------
# Add libraries here and it will install/load from vector
#------------------------------------------------------------
libs = c(
  "lobstr"
)

for (i in libs) {
  if (!is.element(i, .packages(all.available = TRUE))) {
    install.packages(i, repos = "http://cran.us.r-project.org")
  }
  library(i, character.only = TRUE)
}

# Constants:
#--------------------------

same_object <- function(x, y) {
  if(obj_addr(x) == obj_addr(y)) {
    message(paste("x and y have same addresses = ", obj_addr(x)))
  } else {
    message(paste("x and y have different addresses (", obj_addr(x), ",", obj_addr(y), sep=""))
  }
}


x <- c(1, 2, 3)
y <- x

same_object(x, y)

# copy on modify
y[[3]] <- 4

same_object(x, y)

a <- 1:10
b <- a
c <- b
d <- 1:10

same_object(a, d)

