
# IT2120 - Probability and Statistics
# Lab Sheet 08 
# Exercise


# Set working directory
setwd("C:\\Users\\cheth\\OneDrive\\Desktop\\IT24100239")

#  Read the data set
data <- read.table("C:\\Users\\cheth\\OneDrive\\Desktop\\IT24100239\\Exercise - LaptopsWeights.txt", header = TRUE)

# Extract weights
weights <- data$Weight.kg.


#  1: Population Mean & SD

pop_mean <- mean(weights)
pop_sd <- sd(weights)   


cat("Population Mean =", pop_mean, "\n")
cat("Population Standard Deviation =", pop_sd, "\n")


#  2: Draw 25 random samples of size 6

set.seed(123)   # for reproducibility

sample_means <- c()
sample_sds <- c()

for (i in 1:25) {
  sample_i <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_i)
  sample_sds[i] <- sd(sample_i)
}

# Display results
cat("\nSample Means:\n")
print(sample_means)

cat("\nSample Standard Deviations:\n")
print(sample_sds)


#  3: Mean & SD of Sample Means

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("\nMean of Sample Means =", mean_of_sample_means, "\n")
cat("Standard Deviation of Sample Means =", sd_of_sample_means, "\n")


#  Interpretation

cat("\n--- Interpretation ---\n")
cat("The mean of sample means is close to the true population mean.\n")
cat("The SD of sample means is smaller than the population SD,\n")
cat("illustrating the Central Limit Theorem.\n")
