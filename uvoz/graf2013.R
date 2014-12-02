pdf("leto_2013.pdf", paper="a4r")
pie(izobrazba.poregijah[,"X1.st.2013"], labels = izobrazba.poregijah[,1])
text(-1.5,1,"Leto 2013", cex =2)
dev.off()