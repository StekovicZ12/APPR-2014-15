# Uvoz s spletne strani

library(XML)

# Vrne vektor nizov z odstranjenimi začetnimi in končnimi "prazninami" (whitespace)
# iz vozlišč, ki ustrezajo podani poti.
stripByPath <- function(x, path) {
  unlist(xpathApply(x, path,
                    function(y) gsub("^\\s*(.*?)\\s*$", "\\1", xmlValue(y))))
}

uvozi.poregijah <- function() {
  url.poregijah <- "http://pxweb.stat.si/pxweb/Dialog/Saveshow.asp"
  doc.poregijah <- htmlTreeParse(url.poregijah, useInternalNodes=TRUE)
  
  # Poiščemo vse tabele v dokumentu
  tabele <- getNodeSet(doc.poregijah, "//table")
  
  # Iz druge tabele dobimo seznam vrstic (<tr>) neposredno pod
  # trenutnim vozliščem
  vrstice <- getNodeSet(tabele[[1]], "./tr")
  
  # Seznam vrstic pretvorimo v seznam (znakovnih) vektorjev
  # s porezanimi vsebinami celic (<td>) neposredno pod trenutnim vozliščem
  seznam <- lapply(vrstice[2:length(vrstice)], stripByPath, "./td")
  
  # Iz seznama vrstic naredimo matriko
  matrika <- matrix(unlist(seznam), nrow=length(seznam), byrow=TRUE)
  
  # Imena stolpcev matrike dobimo iz celic (<th>) glave (prve vrstice) prve tabele
  colnames(matrika) <- gsub("\n", " ", stripByPath(tabele[[2]][[1]], ".//th"))
  
  # Podatke iz matrike spravimo v razpredelnico
  return(data.frame(apply(gsub("\\*", "",
                          gsub(",", ".",
                          gsub("\\.", "", matrika[,2:5]))),
                    2, as.numeric), row.names=matrika[,1]))
}