# 2. faza: Obdelava, uvoz in čiščenje podatkov
#PODATKI
source("uvoz/uvoz.r", encoding="UTF-8")
source("uvoz/uvoz3.R", encoding="UTF-8")
source("uvoz/prebivalstvo.R", encoding="UTF-8")
#GRAFI
source("uvoz/graf2011.R", encoding="UTF-8") #1.graf
source("uvoz/graf2013.R", encoding="UTF-8") #2.graf

# # 3. faza: Analiza in vizualizacija podatkov
#ZEMLJEVID
source("vizualizacija/vizualizacija.r", encoding="UTF-8")

# # 4. faza: Napredna analiza podatkov
#PODATKI
source("uvoz/prva-stopnja.R", encoding="UTF-8")
source("uvoz/druga-stopnja.R", encoding="UTF-8")
source("uvoz/izdatki.R", encoding="UTF-8")
#GRAFI
source("uvoz/graf.R",encoding="UTF-8")
source("analiza/analiza.r", encoding="UTF-8")

cat("Končano.\n")