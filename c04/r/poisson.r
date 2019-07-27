# The computation of Poisson probabilities
dpois(0:13, 3)

# The construction of Figure 4.1
png(filename = "c04/poisSuicide.png")
plot(0:13, dpois(0:13, 3), type = "h", lwd=3, xlab = "y", ylab = "p(y)")
dev.off()