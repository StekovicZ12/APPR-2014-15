# Uvoz s spletne strani

library(XML)

# Vrne vektor nizov z odstranjenimi začetnimi in končnimi "prazninami" (whitespace)
# iz vozlišč, ki ustrezajo podani poti.
stripByPath <- function(x, path) {
  unlist(xpathApply(x, path,
                    function(y) gsub("^\\s*(.*?)\\s*$", "\\1", xmlValue(y))))
}

uvozi.poregijah <- function() {
  url.poregijah <- "podatki/poregijah2.htm"
  doc.poregijah <- htmlTreeParse(url.poregijah, useInternalNodes=TRUE, encoding="Windows-1250")
  
  # Poiščemo vse tabele v dokumentu
  tabele <- getNodeSet(doc.poregijah, "//table")
  
  # Iz druge tabele dobimo seznam vrstic (<tr>) neposredno pod
  # trenutnim vozliščem
  vrstice <- getNodeSet(tabele[[1]], "./tr")
  
  # Seznam vrstic pretvorimo v seznam (znakovnih) vektorjev
  # s porezanimi vsebinami celic (<td>) neposredno pod trenutnim vozliščem
  seznam <- lapply(vrstice[5:length(vrstice)-1], stripByPath, "./td")
  
  # Iz seznama vrstic naredimo matriko
  matrika <- matrix(unlist(seznam), nrow=length(seznam), byrow=TRUE)
  
  # Imena stolpcev matrike dobimo iz celic (<th>) glave (prve vrstice) prve tabele
  colnames(matrika) <- gsub("\n", " ", paste(stripByPath(vrstice[[3]], ".//th")[-1], c(rep(2011, 3), rep(2012, 3), rep(2013, 3))))
  
  # Podatke iz matrike spravimo v razpredelnico
  imena <- unlist(lapply(vrstice[5:length(vrstice)-1], stripByPath, "./th"))[c(-1,-2)]
  return(data.frame(apply(matrika, 2, as.numeric), row.names=imena))
}