# Install, load and view penguin dataset 
install.packages("palmerpenguins")
library(palmerpenguins)
View(penguins)


# Install and load  ggplot2
install.packages("ggplot2")
library(ggplot2)

# Create a scatter plots to view flipper length and body mass relationship
ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm ,y=body_mass_g, colour = species))
  + facet_wrap(~species )

# Saving a plot with gg save
ggsave("three_penguin_species.jpeg")

# Create a scatter plots to view the  and  relationship 
ggplot(data = penguins, 
       mapping = aes(x =bill_length_mm ,y =bill_depth_mm, colour = species )) +
  geom_point() + facet_wrap(~species )

# Create a line chart to generalize the relationship trend
ggplot(data=penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm ,y=body_mass_g , colour = "red" )) 

# Create a scatter plot with a trend line to view flipper length and body mass relationship
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_smooth() + geom_point()

# Make the visual clearer
ggplot( data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, colour = "violet")) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,
                           colour = species, shape = species))

# Create a standard bar graph
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# Create a bar graph with color codes for different cuts
ggplot( data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

# Create a stacked bar graph to filter by cut, count and clarity
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

# Create bar graphs to view colors for each cut
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) + 
  facet_wrap(~cut)

# Create scatter plots to view relationship for each sex and species
ggplot( data = penguins) +
  geom_point(mapping =aes(x = flipper_length_mm,y = body_mass_g,colour = species)) +
  facet_grid(sex~species)

# Create a scatter plot with a title, subtitle, caption and annotation
ggplot(data=penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,colour= "violet")) +
  geom_point(mapping = aes(x=flipper_length_mm ,y=body_mass_g, colour = species)) +
  labs(title = "Palmer Penguins: Body mass vs flipper length",
       subtitle = "Sample of three species", 
       caption = "Data collected by Dr. Kristen Gorman") + 
  annotate("text",x= 220, y= 4110,label="Gentoos are the largest",
           colour= "navyblue", font_face="bold",size=4.3, angle= 30)

