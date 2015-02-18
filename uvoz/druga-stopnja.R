uvoziDrugastopnja <- function() {
  return(read.table("podatki/2-stopnja.csv", sep = ";", as.is = TRUE,row.names = 1, col.names = c("STOPNJA", "2007", "2008", "2009", "2010", "2011", "2012", "2013"),
                    fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o drugi stopnji..\n")
druga.stopnja <- uvoziDrugastopnja()
sum.druga <- apply(druga.stopnja[c(2,3),], 2, sum)
