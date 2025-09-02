# Exercise 1
n <- 50
p <- 0.85

# i. Distribution: X has bionomial distribution
# with n=50 & p=0.85

# ii. Probability at least 47 passed
prob_geq_47 <- 1 - pbinom(46, n, p)
prob_geq_47


# Exercise 2
lambda <- 12

# i. X = number of calls per hour
# ii. Distribution: X has poisson distribution with lambda = 12

# iii. Probability of exactly 15 calls
prob_15 <- dpois(15, lambda)
prob_15
