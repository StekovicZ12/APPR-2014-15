#2.tabela
#Funkcija, ki uvozi podatke iz datoteke izobrazba-poregijah.csv
uvoziIzobrazbaPoRegijah <- function() {
  return(read.table("podatki/izobrazba-poregijah.csv", sep = ";", as.is = TRUE, col.names = c("REGIJE","1.st.2011","2.st.2011","3.st.2011","1.st.2012","2.st.2012","3.st.2012","1.st.2013","2.st.2013","3.st.2013"),
                    fileEncoding = "Windows-1250"))
}
cat("Uvažam podatke o izobrazbi po regijah..\n")
izobrazba.poregijah <- uvoziIzobrazbaPoRegijah()