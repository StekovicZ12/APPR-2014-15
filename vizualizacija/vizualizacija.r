# 3. faza: Izdelava zemljevida

# Uvozimo funkcijo za pobiranje in uvoz zemljevida.
source("lib/uvozi.zemljevid.r")

# Uvozimo zemljevid.
cat("Uvažam zemljevid...\n")
regije <- uvozi.zemljevid("http://www.stat.si/doc/Geo/Statisticne_regije_NUTS3.zip",
                          "regije", "Statisticne_regije.shp", mapa = "zemljevid",
                          encoding = "Windows-1250")

# Funkcija, ki podatke preuredi glede na vrstni red v zemljevidu
preuredi <- function(podatki, zemljevid) {
  return(data.frame(podatki[order(rownames(podatki)), ])[rank(levels(zemljevid$IME)[rank(zemljevid$IME)]), ])
}

# Preuredimo podatke, da jih bomo lahko izrisali na zemljevid.
poRegijah <- preuredi(poRegijah, regije)

min.2013 <- min(poRegijah[7], na.rm=TRUE)
max.2013 <- max(poRegijah[7], na.rm=TRUE)

# Narišimo zemljevid v PDF.
cat("Rišem zemljevid...\n")
pdf("slike/zemljevid_regije.pdf", width=6, height=4)

n = 100
barve <- topo.colors(n)[1+(n-1)*(poRegijah[,7]-min.2013)/(max.2013-min.2013)]
plot(regije, col = barve)

regije$x2013 <- poRegijah[,7]
spplot(regije, "x2013", col = topo.colors(100))

dev.off()