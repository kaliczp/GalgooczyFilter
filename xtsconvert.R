library(xts)
Q.xts <- xts(Q.df$QLOE, Q.df$date)
plot(Q.xts, ylim = c(-0.01, 0.51))
