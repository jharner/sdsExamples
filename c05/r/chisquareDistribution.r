# The Chi-square distribution with 4 df

par(mai=c(1, 1, 0.25, 0.25))
x <- seq(0, 20, length=100)
hx <- dchisq(x, df=4)
lb <- qchisq(0.025, 4); ub <- 20
i <- x >= lb & x <= ub
plot(x, hx, type="n", xlab=expression(chi^2), ylab=expression(paste("f(", chi^2, ")")), axes=F)
axis(lab = c(5, 1, 10))
lines(x, hx)
polygon(c(lb, x[i], ub), c(0, hx[i], 0), density=20, angle=45)
abline(h=0, v=0)
