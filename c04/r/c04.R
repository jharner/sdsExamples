### R code from vignette source 'c04.Rnw'

###################################################
### code chunk number 1: c04.Rnw:5-6
###################################################
options(prompt="> ",continue=" ",digits=4,width=66)


###################################################
### code chunk number 2: c04.Rnw:64-66
###################################################
# Calculate P(y = 4) using R as a calculator.
exp(1)^(-3)*3^4/prod(4:1)


###################################################
### code chunk number 3: poisRecur
###################################################
source("c04/poisRecur.r")


###################################################
### code chunk number 4: poisComp
###################################################
# Recursive Poisson probability computation for y = 4 when
# lambda = 3 (vector argument are not supported).
recur.pois(4, 3)
# Computation of Poisson probabilities for lambda = 3
# using the built-in dpois Poisson density function
round(dpois(0:13, 3), 4)


###################################################
### code chunk number 5: poisPlot
###################################################
# The construction of Figure 4.1
plot(0:13, dpois(0:13, 3), type = "h", lwd=3, xlab = "y", ylab = "p(y)")


###################################################
### code chunk number 6: poisTest
###################################################
# Example 4.2: Computation of Poisson quantiles and probabilities
# for lambda = 11:
qpois(0.05, lambda = 11)
ppois(5, lambda = 11)
# P(y <= 6) > 0.05 and thus the lower tail rejection region is
# 5 or less.
qpois(0.95, lambda = 11)
ppois(16, lambda = 11, lower.tail = FALSE)
# P(y >= 17) ~ 0.05  and thus the upper tail rejection region is
# 17 or more.

# The actual alpha level using {y <= 5;  y >= 17} for the 
# rejection region  is < 0.1, but it is as close as possible to the
# nominal alpha level
ppois(5, lambda = 11) + ppois(16, lambda = 11,
	lower.tail = FALSE)

# The outcome (count) is y = 13. 
# Thus, the P-value is  P(y <= 9) + P(y >= 13), i.e., getting 2
# above the mean, E(y) = 11, is equivalent to getting 2 below the mean.
ppois(9, lambda = 11) + ppois(12, lambda = 11, lower.tail = FALSE)


