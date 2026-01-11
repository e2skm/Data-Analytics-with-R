# Load the tidyverse library
install.packages("tidyverse")
library(tidyverse)

# Load and Explore the iris  dataset
data("iris")
View(iris)
head(iris)
str(iris)
skim_without_charts(iris)
colnames(iris)


# Clean column names and Load dataset into tibble
iris_tb  <- as_tibble(clean_names(iris))

# Aggregate dataset to compare species
species_comparison <- iris_tb %>% 
  group_by(species) %>% 
  summarise(avg_sepal_length = mean(sepal_length, na.rm = T),
            avg_sepal_width = mean(sepal_width, na.rm = T),
            avg_petal_length = mean(petal_width, na.rm = T),
            avg_petal_width = mean(petal_width, na.rm = T)) 

# Visualise data

