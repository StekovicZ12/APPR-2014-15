uvoziIzdatki <- function() {
  return(read.table("podatki/izdatki.csv", sep = ";", as.is = TRUE,row.names = 1, col.names = c("tercialno izobraževanje","2007", "2008", "2009", "2010", "2011", "2012"),
                    fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o izdatkih..\n")
izdatki <- uvoziIzdatki()