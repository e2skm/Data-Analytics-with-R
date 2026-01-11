# How to display a message
print("Hello world this is my first R program")

# How to store variables
first_name <- "Itumeleng"
age <- 23
bank_balance <- 7.56

# Create a vector(stores data elements of the same type in a 1D sequence)
vec_1 <- c(18,55,72,99.1,23,30,27,16,3.5)
vec_1
vec_2 <- c(age,bank_balance,vec_1)
vec_2 
vec_3 <- c(10L,23L,15L,29L)
vec_3
vec_4 <- c("Johanna","Salome","Tshegofasto", first_name,"Lebogang")
vec_4
vec_5 <- c(TRUE,TRUE,FALSE,FALSE,FALSE)
vec_5
vec_6 <- c(18:72)
vec_6

# How to check a vector's data type
typeof(vec_1)
typeof(vec_3)
typeof(vec_4)
typeof(vec_5)

# How to verify a vector's data type
is.integer(vec_6)
is.double(vec_5)
is.atomic(first_name)
is.logical(vec_2)
is.character(vec_4)
is.numeric(vec_5)

# Determining  the length of a vector
length(vec_6)
length(first_name)
length(vec_2)

# How to name elements in vectors of any type
names(vec_4) <- c("Granny","Mother","Brother","Me","Younger Brother")
vec_4
names(vec_5) <- c("is female")
vec_5

# How to get a subset from a vector
sub_1 <- vec_4[1:3]
sub_1
sub_2 <- vec_2[2]
sub_2 
sub_3 <- vec_4["Me"] 
sub_3

# Create Lists(stores data elements of different types can also store lists,vectors, data frame, and matrices
first_list <- list(first_name,age,bank_balance,TRUE)
first_list
second_list <- list(sub_1,vec_5,vec_2,sub_3,99.9,FALSE,vec_4[5])
second_list

# How to find out what types of elements a list contains
str(first_list)
str(second_list)
str(vec_4)
z <- list(list(list(1 , 3, 5)))
str(z)

# How to name list elements
siblings <- list("first born" = "Tshegofasto", "second  born" = "Itumeleng", "last born"= "Lebogang")
siblings
ages <- list("oldest" = 30, "black sheep" = 23, "youngest" = 18)
ages


# Create a Pipe (tool for expressing a sequence of multiple operations)
