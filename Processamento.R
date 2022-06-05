library(tidyverse)
library(xlsx)

# Achar a pasta do trabalho
if (!is.null(getwd())) setwd("D:/Users/Eduardo/Documents/BI/PB");

# Criar duas variáveis para receber as duas partes de 2020 da fonte escolhida
p1_20 <- read.csv("D:/Users/Eduardo/Documents/BI/PB/HIST_PAINEL_COVIDBR_2020_Parte1_03abr2022.csv", header = TRUE, sep = ";")
p2_20 <- read.csv("D:/Users/Eduardo/Documents/BI/PB/HIST_PAINEL_COVIDBR_2020_Parte2_03abr2022.csv", header = TRUE, sep = ";")

# Criar mais duas variáveis através do método de filtração das bases
rj_1 <- p1_20 %>% filter(municipio == "Rio de Janeiro")
rj_2 <- p2_20 %>% filter(municipio == "Rio de Janeiro")

# Juntar as duas bases em uma só
rj <- rbind(rj_1, rj_2)

# Excluir as colunas que possuem valores "NA"
rj$Recuperadosnovos <- NULL
rj$emAcompanhamentoNovos <- NULL

# Escrever um arquivo xlsx para salvar a base utilizável
write.xlsx(rj,file="COVIDRJ_2020.xlsx")

# Criar duas variáveis para receber as duas partes de 2021 da fonte escolhida
p1_21 <- read.csv("D:/Users/Eduardo/Documents/BI/PB/HIST_PAINEL_COVIDBR_2021_Parte1_03abr2022.csv", header = TRUE, sep = ";")
p2_21 <- read.csv("D:/Users/Eduardo/Documents/BI/PB/HIST_PAINEL_COVIDBR_2021_Parte2_03abr2022.csv", header = TRUE, sep = ";")

# Criar mais duas variáveis através do método de filtração das bases
rj_1 <- p1_21 %>% filter(municipio == "Rio de Janeiro")
rj_2 <- p2_21 %>% filter(municipio == "Rio de Janeiro")

# Juntar as duas bases em uma só
rj <- rbind(rj_1, rj_2)

# Excluir as colunas que possuem valores "NA"
rj$Recuperadosnovos <- NULL
rj$emAcompanhamentoNovos <- NULL

# Escrever um arquivo xlsx para salvar a base utilizável
write.xlsx(rj,file="COVIDRJ_2021.xlsx")

# Criar uma variável para receber as parte de 2022 da fonte escolhida
p_22 <- read.csv("D:/Users/Eduardo/Documents/BI/PB/HIST_PAINEL_COVIDBR_2022_Parte1_03abr2022.csv", header = TRUE, sep = ";")

# Criar mais uma variável através do método de filtração da base
rj <- p_22 %>% filter(municipio == "Rio de Janeiro")

# Excluir as colunas que possuem valores "NA"
rj$Recuperadosnovos <- NULL
rj$emAcompanhamentoNovos <- NULL

# Escrever um arquivo xlsx para salvar a base utilizável
write.xlsx(rj,file="COVIDRJ_2022.xlsx")