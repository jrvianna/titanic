library(dplyr)
library(tidyr)
library(ggplot2)

mod <- glm(Survived ~ Fare, data = train, family = binomial)
summary(mod)

ggplot(train, aes(x = Fare, color = as.factor(Survived))) + geom_density()