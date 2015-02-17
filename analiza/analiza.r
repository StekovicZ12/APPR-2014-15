# 4. faza: Analiza podatkov
pdf("slike/analiza.pdf")
leta <- 2007:2011
stolpci <- paste0("X", leta)
# plot(sum.druga[stolpci], izdatki[stolpci])

library(plotrix)
twoord.plot(leta, sum.prva[stolpci], leta, izdatki[stolpci])
legend("bottomright",
       legend = c("izdatki za tercialno izobraževanje", "1.stopnja(univerzitetno,strokovno,prejšnje)"),
       col = c("red","black"),
       lty = c("solid", "solid"),
       pch = c(2,1),
       bg = "white")
dev.off()