source("starima_package.R")

west_drug <- read.csv(file="N:/DesktopSettings/Desktop/Sem2/Spatio Temporal/coursework/Data and code to submit/Chapter 2/R/west_drug.csv")
west_drug

W <- as.matrix(read.table(file="Wwww.csv", header=TRUE, sep=","))
w

west_drug.mat <- as.matrix(west_drug)
stacf(west_drug.mat, W, 48)

#Differencing the data
west_drug.mat.diff <- diff(west_drug.mat,lag=12,differences=1)
west_drug.mat.diff

#stacf after seasonal differencing
stacf(west_drug.mat.diff, W, 48)

#stpacf after seasonal differencing
stpacf(west_drug.mat.diff, W, 48)
