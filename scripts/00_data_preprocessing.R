### Preamble ###
# Purpose: Clean the Daily Shelter occupancy data downloaded from Toronto Open Data
# Author: 
  - Yitian Li 
  - Wei Zhang
  - Nan An
# Date: February 28 2021
# Pre-req: None

### Workspace Set-Up ###
# install.packages("readxl")
# install.packages("tidyverse")
# install.packages("dplyr")
# install.packages("ggpubr")
# install.packages("ggplot2")
# install.packages("astsa")
# install.packages("lubridate")
library(readxl)
library(tidyverse)
library(dplyr)
library(ggpubr)
library(ggplot2)
library(astsa)
library(lubridate)


### Import the dataset ###
raw_data<- read_excel("data.xlsx")

### Clean data ###
raw_data <- raw_data %>% filter(Year < 2017)
names(raw_data)[2] = "Urban income"
names(raw_data)[3] = "Rural income"                      
names(raw_data)[5] = "Gini"
attach(raw_data)
