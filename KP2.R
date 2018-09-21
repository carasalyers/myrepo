#################
#####  KP2  #####
#################


### Install Packages
#install.packages(c("psych", "foreign", "DBI", "readxl", "haven", "car", "effects", "corrplot", "BaylorEdPsych", "ggfortify", "cluster", "klaR", "rrcov", "gmodels", "QuantPsyc", "tidyverse", "dplyr"))

### Load packages
library(psych)
library(foreign)
library(DBI)
library(readxl)
library(haven)
library(car)
library(effects)
library(corrplot)
library(BaylorEdPsych)
library(ggfortify)
library(cluster)
library(klaR)
library(rrcov)
library(gmodels)
library(QuantPsyc)
library(tidyverse)
library(dplyr)

### Read Data
metl_asmt <- read_xlsx("C:/Users/CaraSalyers/Desktop/ATIS/ATIS DATA/METL_ASSESSMENT_DATA_TABLE.xlsx")
str(metl_asmt)

### Factor Status Variables
metl_asmt$LAST_STATUS <- as.factor(metl_asmt$LAST_STATUS)
metl_asmt$CURRENT_STATUS <- as.factor(metl_asmt$CURRENT_STATUS)
metl_asmt$QTR_2_FY18 <- as.factor(metl_asmt$QTR_2_FY18)
metl_asmt$QTR_3_FY18 <- as.factor(metl_asmt$QTR_3_FY18)
metl_asmt$QTR_4_FY18 <- as.factor(metl_asmt$QTR_4_FY18)
status <- c("U","P","T")
str(metl_asmt)

summary(metl_asmt)
plot(metl_asmt$LAST_STATUS)

metl_asmt %>%
  select(LAST_STATUS:QTR_4_FY18) %>% 
  ggplot(LAST_STATUS) 

