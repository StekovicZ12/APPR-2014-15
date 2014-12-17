pdf("slike/leto_2011.pdf")
pie(poRegijah[,1], labels = rownames(poRegijah))
text(-0.01,1,"Leto 2011-Visokosolska 1.stopnja", cex =2)
dev.off()