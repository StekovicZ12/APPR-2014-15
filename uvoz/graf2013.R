pdf("slike/leto_2013.pdf")
pie(izobrazba.poregijah[,"X1.st.2013"], labels = izobrazba.poregijah[,1])
text(-0.01,1,"Leto 2013- Visokosolska 1.stopnja", cex =2)
dev.off()