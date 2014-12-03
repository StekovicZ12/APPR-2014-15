pdf("slike/leto_2011.pdf")
pie(izobrazba.poregijah[,"X1.st.2011"], labels = izobrazba.poregijah[,1])
text(-0.01,1,"Leto 2011-Visokosolska 1.stopnja", cex =2)
dev.off()