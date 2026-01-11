# The 4 types of operations in R
# 1 - Assignment: value to variable
current_date <- today() # Prefered assignment (leftward)
now() -> current_dateTime # Not prefered assignment (leftward) works the same
x <- 11.11
y <- 2.5

# 2 - Arithmetic: perform math on values
add <- x + y
subtract <- x - y
div = x / y
int_div <- x %/% y
multiply <- x * y
modulus <- x %% y
exponent <- x ^ y

# 3 - Relational: compare values return boolean
less_than <- x < y
greater_than <- x > y
less_than_or_equal <- x <= y
greater_than_or_equal <- x >= y
equal_to <- x == y
not_equal_to <- x != y

# 4 - Logical: combine logical statements return boolean
and <- TRUE & TRUE
and2 <- TRUE & FALSE
and3 <-  FALSE & FALSE
or <- TRUE | FALSE
or2 <- FALSE | FALSE
or3 <- FALSE | TRUE
not <- !TRUE
not2 <- !FALSE
not3 <- !(TRUE & FALSE)  
