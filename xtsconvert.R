library(xts)
Q.xts <- xts(Q.df$QLOE, Q.df$date)
plot(Q.xts)
