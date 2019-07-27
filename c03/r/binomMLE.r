# The binomial MLE
# par(mfrow=c(3, 1))

png(filename = "c03/plots/binomMLE3.png")
plot(0:20, dbinom(0:20, 20, 0.3), type = "h", lwd=3, xlab = "y",
	ylab = "b(y; 20, 0.3)")
text(x=8.5, y = 0.185, label = "y = 6\n most probable")
dev.off()

png(filename = "c03/plots/binomMLE5.png")
plot(0:20, dbinom(0:20, 20, 0.5), type = "h", lwd=3, xlab = "y",
	ylab = "b(y; 20, 0.5)")
text(x=12.5, y = 0.175, label = "y = 10\n most probable")
dev.off()

png(filename = "c03/plots/binomMLE7.png")
plot(0:20, dbinom(0:20, 20, 0.7), type = "h", lwd=3, xlab = "y",
	ylab = "b(y; 20, 0.7)")
text(x=16.5, y = 0.188, label = "y = 14\n most probable")
dev.off()