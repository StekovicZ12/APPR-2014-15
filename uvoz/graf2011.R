pdf("leto_2011.pdf", paper="a4r")
pie(izobrazba.poregijah[,"X1.st.2011"], labels = izobrazba.poregijah[,1])
text(-1.5,1,"Leto 2011", cex =2)
dev.off()