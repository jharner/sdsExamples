library(car)
library(lme4)

data(Dyestuff)
str(Dyestuff)

dyestuff.lm <- lm(Yield ~ Batch, Dyestuff)
anova(dyestuff.lm)
summary(dyestuff.lm)

(dyestuff.reml <- lmer(Yield ~ 1 + (1|Batch), Dyestuff))
fixef(dyestuff.reml)
ranef(dyestuff.reml)

(dyestuff.ml <- update(dyestuff.reml, REML = FALSE))

library(lmerTest)
dyestuff.reml.test <- as(dyestuff.reml,"merModLmerTest")
summary(dyestuff.reml.test, ddf="Kenward-Roger")