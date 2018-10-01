#################
#####  KP2  #####
#################


### Install Packages
#install.packages(c("psych", "foreign", "DBI", "readxl", "haven", "car", "effects", "corrplot", "BaylorEdPsych", "ggfortify", "cluster", "klaR", "rrcov", "gmodels", "QuantPsyc", "tidyverse", "dplyr", "shiny", "shinythemes", "igraph"))

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
library(shiny)
library(shinythemes)
library(readr)
library(igraph)

### Read Data
metl_asmt <- read_xlsx("C:/Users/CaraSalyers/Desktop/ATIS/ATIS DATA/METL_ASSESSMENT_DATA_TABLE.xlsx")
ictl <- read_excel("C:/Users/CaraSalyers/Desktop/ATIS/ATIS DATA/ATIS_ICTL_TASKS_DATA_TABLE.xlsx")
autl <- read_excel("C:/Users/CaraSalyers/Desktop/ATIS/ATIS DATA/FM_7_15_AUTL_REF_DATA_TABLE.xlsx")
metl <- read_excel("C:/Users/CaraSalyers/Desktop/ATIS/ATIS DATA/MISSION_ESSENTIAL_TASKS_REF_DATA_TABLE.xlsx")
awt <- read_excel("C:/Users/CaraSalyers/Desktop/ATIS/ATIS DATA/ATIS_AWT_TASKS_DATA_TABLE.xlsx")


### Factor Status Variables
metl_asmt$LAST_STATUS <- factor(metl_asmt$LAST_STATUS, levels=c("U", "P", "T"))
metl_asmt$CURRENT_STATUS <- factor(metl_asmt$CURRENT_STATUS, levels=c("U", "P", "T"))
metl_asmt$QTR_2_FY18 <- factor(metl_asmt$QTR_2_FY18, levels=c("U", "P", "T"))
metl_asmt$QTR_3_FY18 <- factor(metl_asmt$QTR_3_FY18, levels=c("U", "P", "T"))
metl_asmt$QTR_4_FY18 <- factor(metl_asmt$QTR_4_FY18, levels=c("U", "P", "T"))
str(metl_asmt)
summary(metl_asmt)



           
           
           
           
