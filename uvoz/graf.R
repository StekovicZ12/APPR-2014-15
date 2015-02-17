pdf("slike/primerjava-moski-zenske.pdf")
letab <- 2011:2013
leta <- range(letab)
število.izobraženih <- range(izobrazba.slovenije)
plot(leta, število.izobraženih, "n")
bty = "c"
barva <- rep(c("red", "green", "orange"), 2)
simbol <- c(rep(1, 3), rep(8, 3))
for (i in 1:nrow(izobrazba.slovenije)) {
  points(letab, izobrazba.slovenije[i,], pch = simbol[i])
  lines(letab, izobrazba.slovenije[i,], col = barva[i] )
  
}

dev.off()

# legend("right",
#        legend = c("moški", "ženske", "1.stopnja", "2.stopnja", "3.stopnja"),
#        col = c("black", "black", "red", "green", "orange"),
#        pch = c(1,8,-1,-1,-1),
#        bg = "white")

