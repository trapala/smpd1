#install.packages("MCDA")
library(MCDA)
epsilon <-0.01

t = read.table("D:/Dokumenty/RStudio/lab1/led.csv", header = TRUE, sep = ",", row.names = 1)

# the performance table
#performanceTable <- rbind(
#  t
#)

#rownames(performanceTable) <- (
#  row.names(t)
#)

#colnames(performanceTable) <- (
#  colnames(t)
#)

# ranks of the alternatives
alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10)
names(alternativesRanks) <- row.names(t)
# criteria to minimize or maximize
criteriaMinMax <- c("max","max","max","min","min")
names(criteriaMinMax) <- colnames(t)
x<-additiveValueFunctionElicitation(t,
                                    criteriaMinMax, epsilon,
                                    alternativesRanks = alternativesRanks)
print(x)