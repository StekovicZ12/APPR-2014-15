pdf("slike/leto_2013.pdf")
pie(poRegijah[,7], labels = rownames(poRegijah))
text(-0.01,1,"Leto 2013- Visokosolska 1.stopnja", cex =2)
dev.off()