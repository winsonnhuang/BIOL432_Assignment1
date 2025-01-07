# R Script Number 1

# Creating a vector with 5 species names
species_names <- c("Homo Sapiens", "Ursus Maritimus"," Felis Catus", "Canis Lupus Familiaris", "Equus Caballus")

# Randomly selecting 100 species names from the vector
species_vector <- sample(species_names, 100, replace = TRUE)

# Creating a random selection of 100 limb_width values using normal distribution with a mean of 5 and standard deviation of 1
limb_width <- abs(rnorm(100, mean = 5, sd = 1))

# Creating a random selection of 100 limb_length values using normal distribution with a mean of 40 and standard deviation of 10
limb_length <- abs(rnorm(100, mean = 40, sd = 10))

# Creating a vector with 3 observer names
observer_names <- c("Jack A", "Megan B", "John C")

# Randomly selecting 100 observer names from the vector
observer_vector <- sample(observer_names, 100, replace = TRUE)

# Combining all the vectors into a data frame
Organism <- species_vector
Limb_width <- round(limb_width, 2) # rounding to 2 decimal places
Limb_length <- round(limb_length, 2) # rounding to 2 decimal places
Observer <- observer_vector

# Creating the data frame
measurements <- data.frame(Organism, Limb_width, Limb_length, Observer)

# Exporting the data frame to a CSV file
write.csv(measurements, file = "measurements.csv", row.names = FALSE)

