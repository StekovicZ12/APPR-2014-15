# 2. faza: Obdelava, uvoz in čiščenje podatkov
source("uvoz/uvoz.r") #1.tabela

source("uvoz/uvoz3.R") #xml 2. tabela

source("uvoz/graf2011.R") #1.graf
source("uvoz/graf2013.R") #2.graf

# # 3. faza: Analiza in vizualizacija podatkov
# source("vizualizacija/vizualizacija.r")
# 
# # 4. faza: Napredna analiza podatkov
# source("analiza/analiza.r")

cat("Končano.\n")