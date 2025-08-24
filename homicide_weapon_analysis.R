########################################################################
## Title: Non-Firearm Weapon Use by Female Homicide Perpetrators in the U.S.
## Author: https://github.com/hgurr
## Date: 02-17-2024
## Description:
##   Analyzes U.S. homicide data to explore the types of non-firearm weapons 
##   used by female perpetrators. The analysis includes:
##     1) Frequency distribution of perpetrator sex
##     2) Identification of common non-firearm weapons
##     3) Cross-tabulation and proportion of weapon use by sex
##
##   The script filters the dataset to include only non-firearm weapons and
##   creates frequency and proportion tables to highlight patterns in weapon 
##   selection among female offenders.
##
##   Based on: homicide_sample.csv dataset.
########################################################################

# Set Working Directory #
setwd("C:/Users/...") # Replace the content within the quotes with your selected working directory
getwd()

# Install and Load Required Packages #
## Install
install.packages("readr")
install.packages("dplyr")
install.packages("tidyr")
## Load
library(readr)
library(dplyr)
library(tidyr)

# Import and Explore Dataset #
## Import
homicide <- read_csv("homicide_sample.csv")
## Quick Data Overview
str(homicide)
head(homicide)

# Research Question # 
# What type of non-firearm weapon is most commonly used by women to commit homicide in the United States?

# Define Variables of Interest #
# 1. "Perpetrator.Sex" - Sex of perpetrator
# 2. "Weapon" - Type of weapon used

# One-Way Table: Perpetrator Sex #
table(homicide$Perpetrator.Sex)

# One-Way Proportion Frequency Table #
prop.table(table(homicide$Perpetrator.Sex))

# Filter Dataset Frame: Non-Firearm Weapons Only #
# "nonfirearm" - Subset of "homicide_sample.csv" using only non-firearm weapons in "Weapon"
nonfirearm <- filter(homicide, Weapon == "Blunt Object" | Weapon == "Drowning"| Weapon == "Drugs" | 
                     Weapon == "Explosives" | Weapon == "Fall" | Weapon == "Fire" | Weapon == "Knife" |
                     Weapon == "Poison" | Weapon == "Strangulation" | Weapon == "Suffocation")

# Two-Way Table: Non-Firearm Weapon by Perpetrator Sex #
table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex)

# Two-Way Proportion Frequency Table (By Column): Non-Firearm Weapon by Perpetrator Sex #
prop.table(table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex), 2)
