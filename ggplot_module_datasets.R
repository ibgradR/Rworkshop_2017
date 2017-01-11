
# WorldPhones for bar plots
library(tidyr)
wp <- as.data.frame(WorldPhones)
wp$year <- row.names(wp)
wpl <- gather(wp, key= continent, value= phones, N.Amer:Mid.Amer)
head(wpl)

## Demonstrating bar plots
coin.flip <- as.data.frame(rbinom(100, 1, 0.5))
colnames(coin.flip)[1] <- "result"
coin.flip$face <- ifelse(coin.flip$result == 1, "Heads", "Tails")
head(coin.flip)


