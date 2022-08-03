Sys.setenv(TZ='UTC')
Qmod.xts <- xts(coredata(Q.xts), round(index(Q.xts)) + 13)

time5min <- seq(as.POSIXct("2009-06-11 05:05:00"),as.POSIXct("2009-06-12 05:40:00"), by = "5 mins")
xts5min <- xts(as.numeric(rep(NA, length(time5min))), time5min)
Qmod5min <- c(xts5min, Q.xts)
select <- is.na(Qmod5min)
Qmod5min <- na.approx(Qmod5min)
Qmod5minOK <- Qmod5min[select]
