# pbinom computes the probability that y <= 5 for n = 20
# with a probability of 0.5
(lower <- pbinom(5, 20, 0.5))
# pbinom computes the probability that y >= 15
# since lower.tail=FALSE
(upper <- pbinom(14, 20, 0.5, lower.tail=FALSE))