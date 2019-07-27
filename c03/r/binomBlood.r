# The computation of the type O blood binomial probabilities
y <- dbinom(0:4, 4, 0.4);
# The construction of Figure 3.1
plot(0:4, y, type = "h", lwd=3, xlab = "y", ylab = "p(y)")