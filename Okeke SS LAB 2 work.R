# Specify the file path
file_path <- "C:/Users/GIS/Desktop/UNM Doc/STATISTICS PROGRAM/MY COURSES/Spring 2024 Courses/Spatial Statistics/Lab work/Lab 2/Lab2data.csv"

# Load the data into R as Lab2data
Lab2data <- read.csv(file_path)

# Print the loaded data
summary(Lab2data)


# Count values for the first 10 days
pollen_count <- Lab2data$pollen[1:10]

print(pollen_count)

april_data <- subset(Lab2data,Month == "April")

april_data

pollen_count_april <- april_data$pollen

pollen_count_april

# Assuming "Month" and "Pollen" are the correct column names in Lab2data

# Subset the data for April and May
pollen_april <- Lab2data$Pollen[Lab2data$Month == "April"]
pollen_may <- Lab2data$Pollen[Lab2data$Month == "May"]



# Perform a two-sample t-test
t_test_result <- t.test(pollen_april, pollen_may)

# Print the results
print(t_test_result)



# Assuming "Pollen" and "EVI" are the correct column names in Lab2data

# Fit a linear regression model
regression_model <- lm(pollen ~ EVI, data = Lab2data)

# Get the formula and coefficients
formula <- as.formula(regression_model)
coefficients <- coef(regression_model)

# Print the formula and coefficients
cat("Regression Formula:", format(formula), "\n")
cat("Coefficients:\n")
print(coefficients)

# Check the significance of the predictor (EVI)
summary(regression_model)

# Plot the data and add the fitted regression line
plot(Lab2data$EVI, Lab2data$Pollen, xlab = "EVI", ylab = "Pollen Count", main = "Pollen Count Vs EVI")
abline(regression_model, col = "red")

# Plot residuals in a separate graph
residuals <- residuals(regression_model)
plot(Lab2data$EVI, residuals, xlab = "EVI", ylab = "Residuals", main = "Residuals Vs EVI")




# Assuming "Date," "Pollen," and "EVI" are the correct column names in Lab2data

# Convert Date to a Date object if not already
Lab2data$Date <- as.Date(Lab2data$Day)

# Convert the "Day" column to a Date type
Lab2data$Day <- as.Date(Lab2data$Day, format="%m/%d/%Y")

# Plot 1: Pollen Count
plot(Lab2data$Day, Lab2data$pollen, type="l", col="blue", xlab="Date", ylab="Pollen Count", main="Pollen Count Over Time")

# Plot 2: EVI
plot(Lab2data$Day, Lab2data$EVI, type="l", col="green", xlab="Date", ylab="EVI", main="EVI Over Time")

