# This code is practice for generating p-values.

# Average
a <- 5

# Standard Deviation
s <- 2

# Population Size
n <- 20

# Sample Mean
xbar <- 7

# Compute Calculation
z <- 2 * pnorm(-abs((xbar - a)/(s/sqrt(n))))

# Print Value
z
