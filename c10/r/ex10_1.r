library(sds)
data(saws)
saws.lm <- lm(angle ~ model, data=saws)
anova(saws.lm)