library(tidyverse)
library(xlsx)
library(readxl)
library(lubridate)

if (!is.null(getwd())) setwd("D:/Users/Eduardo/Documents/BI/PB");

# Recebendo os dataframes.
p2020 <- read.xlsx("D:/Users/Eduardo/Documents/BI/PB/COVIDRJ_2020.xlsx", sheetName = "Sheet1")
p2021 <- read.xlsx("D:/Users/Eduardo/Documents/BI/PB/COVIDRJ_2021.xlsx", sheetName = "Sheet1")
p2022 <- read.xlsx("D:/Users/Eduardo/Documents/BI/PB/COVIDRJ_2022.xlsx", sheetName = "Sheet1")

# Checando a certeza dos dados.
sum(p2020$casosNovos)
sum(p2021$casosNovos + p2021$obitosNovos)

# Fazendo o summary de cada dataframe.
summary(p2020)
summary(p2021)
summary(p2022)

# Checando as colunas data para ver se estão no formato Date.
class(p2020$casosAcumulado)
class(p2021$data)
class(p2022$data)

# Transformando as colunas data de character para Date.
p2020$data <- as.Date(p2020$data)
p2021$data <- as.Date(p2021$data)
p2022$data <- as.Date(p2022$data)

# Checando os resultados.
class(p2020$data)
class(p2021$data)
class(p2022$data)