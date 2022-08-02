Sys.setenv(TZ='UTC')
Qmod.xts <- xts(coredata(Q.xts), round(index(Q.xts)) + 13)
