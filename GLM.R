# Load necessary libraries
library(MASS)

# Load the Boston dataset
data("Boston")

# View the first few rows of the dataset
head(Boston)

# Summary of the dataset
summary(Boston)

# Fit a GLM
glm_model <- glm(medv ~ ., data = Boston, family = gaussian())

# Summarize the model
summary(glm_model)

# Predicted values
predictions <- predict(glm_model, Boston)

# Calculate Mean Squared Error (MSE)
mse <- mean((Boston$medv - predictions)^2)
print(paste("Mean Squared Error: ", mse))

# Plot actual vs predicted values
plot(Boston$medv, predictions, xlab = "Actual", ylab = "Predicted", main = "Actual vs Predicted")
abline(0, 1)

# Residuals plot
par(mfrow = c(2, 2))
plot(glm_model)

# Reset plotting layout
par(mfrow = c(1, 1))

