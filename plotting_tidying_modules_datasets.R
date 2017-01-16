
library(tidyr)
library(ggplot2)

# WorldPhones for bar plots
wp <- as.data.frame(WorldPhones)
wp$year <- row.names(wp)
wpl <- gather(wp, key= continent, value= phones, N.Amer:Mid.Amer)
head(wpl)

## Demonstrating bar plots
coin.flip <- as.data.frame(rbinom(100, 1, 0.5))
colnames(coin.flip)[1] <- "result"
coin.flip$face <- ifelse(coin.flip$result == 1, "Heads", "Tails")
head(coin.flip)

## Faceting
data(mpg)
mpg2 <- as.data.frame(subset(mpg, cyl != 5 & drv %in% c("4", "f")))
mpg3 <- mpg2[ , c(4, 5, 7, 8, 9) ]
mpg3 <- transform(mpg3,
                  cyl = as.factor(cyl),
                  drv = as.factor(drv))

## Tidyr
set.seed(10)
messy <- data.frame(
  id = 1:20,
  site = rep(1:4, 5),
  trt = rep(c('control', 'treatment'), each = 10),
  mass.M = runif(20, 20, 40),
  mass.F = runif(20, 5, 25)
)

data(Orange)
Orange.messy <- spread(data= Orange, Tree, circumference)
colnames(Orange.messy) <- c("age", "tree3", "tree1", "tree5", "tree2", "tree4")
Orange.messy$age <- as.factor(Orange.messy$age)
Orange.messy <- Orange.messy[, c(1, 3, 5, 2, 6, 4)]
# values are the tree circumference at each age

