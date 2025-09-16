# Exercise 
# 1: Train arrival probability (8:10-8:25 a.m.)

prob_train <- punif(25, min = 0, max = 40, lower.tail = TRUE) - 
  punif(10, min = 0, max = 40, lower.tail = TRUE)
cat("Probability train arrives between 8:10-8:25 a.m.:", prob_train, "\n")

# 2: Software update probability (at most 2 hours)

prob_update <- pexp(2, rate = 1/3, lower.tail = TRUE)
cat("Probability update takes at most 2 hours:", prob_update, "\n")

# 3: IQ scores
# i: Probability IQ above 130

prob_iq_130 <- pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)
cat("Probability IQ above 130:", prob_iq_130, "\n")

# ii: IQ score at 95th percentile

iq_95th <- qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
cat("IQ score at 95th percentile:", iq_95th, "\n")