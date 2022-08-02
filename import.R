library(readxl)
raw <- as.data.frame(read_excel("filterek.xlsx"))
Q.df <- raw[-1, 1:2]
plot(Q.df, type = "l")
