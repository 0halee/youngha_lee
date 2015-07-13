install.packages("ggplot2")
library("ggplot2")

mat$G3
summary(mat$G3)

ggplot(G3, data=mat, geom="density", alpha=I(.5))