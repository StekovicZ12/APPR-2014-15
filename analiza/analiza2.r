# 4. faza: Analiza podatkov
pdf("slike/analiza2.pdf")
leta <- 2007:2012
stolpci <- paste0("X", leta)


library(plotrix)
twoord.plot(leta, sum.druga[stolpci], leta, izdatki[stolpci],xlab="Leta", ylab="število študentov magisterija", rylab="Izdatki/€", main = "Število študentov magisterija skozi leta in izdatki za tercialno izobraževanje")
legend("bottomright",
       legend = c("izdatki za tercialno izobraževanje", "2.stopnja"),
       col = c("red","black"),
       lty = c("solid", "solid"),
       pch = c(2,1),
       bg = "white")
dev.off()