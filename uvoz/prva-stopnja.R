uvoziPrvastopnja <- function() {
  return(read.table("podatki/1-stopnja.csv", sep = ";", as.is = TRUE,row.names = 1, col.names = c("STOPNJA", "2007", "2008", "2009", "2010", "2011", "2012", "2013"),
                    fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o prvi stopnji..\n")
prva.stopnja <- uvoziPrvastopnja()

sum.prva <- apply(prva.stopnja, 2, sum)
