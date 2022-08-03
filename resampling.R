Sys.setenv(TZ='UTC')
Qmod.xts <- xts(coredata(Q.xts), round(index(Q.xts)) + 13)

## 5min
time5min <- seq(as.POSIXct("2009-06-11 05:05:00"),as.POSIXct("2009-06-12 05:40:00"), by = "5 mins")
xts5min <- xts(as.numeric(rep(NA, length(time5min))), time5min)
Qmod5min <- c(xts5min, Q.xts)
select <- is.na(Qmod5min)
Qmod5min <- na.approx(Qmod5min)
Qmod5minOK <- Qmod5min[select]

## 10min
time10min <- seq(as.POSIXct("2009-06-11 05:05:00"),as.POSIXct("2009-06-12 05:35:00"), by = "10 mins")
xts10min <- xts(as.numeric(rep(NA, length(time10min))), time10min)
Qmod10min <- c(xts10min, Q.xts)
select <- is.na(Qmod10min)
Qmod10min <- na.approx(Qmod10min)
Qmod10minOK <- Qmod10min[select]

## 15min
time15min <- seq(as.POSIXct("2009-06-11 05:05:00"),as.POSIXct("2009-06-12 05:35:00"), by = "15 mins")
xts15min <- xts(as.numeric(rep(NA, length(time15min))), time15min)
Qmod15min <- c(xts15min, Q.xts)
select <- is.na(Qmod15min)
Qmod15min <- na.approx(Qmod15min)
Qmod15minOK <- Qmod15min[select]

## Control plot
plot.zoo(Q.xts)
lines(as.zoo(Qmod5minOK), col = 2)
lines(as.zoo(Qmod10minOK), col = 3)
lines(as.zoo(Qmod15minOK), col = 4)
legend("topright", c("Original", "5 min", "10 min", "15 min"), lwd = 1, col = 1:4)
