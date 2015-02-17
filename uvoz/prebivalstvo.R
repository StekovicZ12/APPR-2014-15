uvoziPrebivalstvo <- function() {
  return(read.csv("podatki/prebivalstvo.csv", sep = ",", as.is = TRUE,row.names = 1,
                    fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o prebivalstvu..\n")
prebivalstvo <- apply(uvoziPrebivalstvo(), 1, c)