# Install and Load the neccessary packages
install.packages("palmerpenguins")
library("palmerpenguins")
library(tidyverse)

# View dataset
View(penguins)

# Sort data by bill length 
penguins %>% arrange(bill_length_mm) # in Ascending order
penguins %>% arrange(-bill_length_mm) # in Descending order

# Find the average bill length in mm for penguins in each island
penguins %>% group_by(island) %>%  drop_na() %>% 
  summarise(avg_bill_len_mm = mean(bill_length_mm)) 

# Find the maximum bill length in mm for penguins in each island
penguins %>% group_by(island) %>%  drop_na() %>% 
  summarise(max_bill_len_mm = max(bill_length_mm)) 

# Find the maximum, average, standard deviation and minimum bill length in mm for penguins in each island and species
penguins %>% group_by(island, species) %>%  drop_na() %>%
  summarise(min_bill_len_mm = min(bill_length_mm),
            avg_bill_len_mm = mean(bill_length_mm),
            max_bill_len_mm = max(bill_length_mm),
            std_bill_len_mm = sd(bill_length_mm))

# Filter data for Adelie penguins
penguins %>%  filter(species == "Adelie") %>%  drop_na()






