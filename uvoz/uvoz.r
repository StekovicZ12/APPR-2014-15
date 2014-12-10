# 2. faza: Uvoz podatkov

#1.tabela
# Funkcija, ki uvozi podatke iz datoteke izobrazba-slovenije.csv
uvoziIzobrazbaSlovenije <- function() {
  return(read.table("podatki/izobrazba-slovenije.csv", sep = ";", as.is = TRUE,row.names = 1, col.names = c("STOPNJA", "2011", "2012", "2013"),
                      fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o izobrazbi slovenije..\n")
izobrazba.slovenije <- uvoziIzobrazbaSlovenije()



# Če bi imeli več funkcij za uvoz in nekaterih npr. še ne bi
# potrebovali v 3. fazi, bi bilo smiselno funkcije dati v svojo
# datoteko, tukaj pa bi klicali tiste, ki jih potrebujemo v
# 2. fazi. Seveda bi morali ustrezno datoteko uvoziti v prihodnjih
# fazah.