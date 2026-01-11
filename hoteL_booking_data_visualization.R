# Explore the tibble
head(hotel_bookings)
colnames(hotel_bookings)

# Install and load the ggplot2 package
install.packages("ggplot2")
library(ggplot2)

# Create a scatter plot to visualize lead_time and children relationship
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time,y = children))

# Create a scatter plot to visualize stays_in_weekend_nights and children relationship
ggplot(data = hotel_bookings,
       mapping = aes(x = stays_in_weekend_nights, y = children) ) +
  geom_point()

# Create a stacked bar graph showing each hotel and market segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

# Create separate bar graphs for each market segment
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

# Load tidyverse package
library(tidyverse)

# Create a filtered data set fora specific market segment and hotel
city_hotel_online_ta <- filter(hotel_bookings, 
                               (hotel == "City Hotel" & 
                                  hotel_bookings$market_segment =="Online TA"))

# Create a filtered data set fora specific market segment and hotel using pipes
onlineta_city_hotel <- hotel_bookings %>% 
  filter(hotel == "City Hotel") %>% 
  filter(market_segment == "Online TA")


# View filtered tibbles
View(city_hotel_online_ta)
View(onlineta_city_hotel)


# Use filtered tibble to visualize lead_time and children relationship
ggplot(data = onlineta_city_hotel) + 
  geom_point(mapping = aes(x = lead_time, y = children))