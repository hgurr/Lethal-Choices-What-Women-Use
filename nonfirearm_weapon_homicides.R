########################################################################
## Title: Homicide Weapon Analysis - Non-Firearm Use by Female Perpetrators in the U.S.
## Author: https://github.com/hgurr
## Date: 02-17-2024
## Description:
##   Analyzes homicide data to explore patterns of non-firearm weapon use
##   by female perpetrators in the United States. Generates frequency and proportion
##   tables to identify the most commonly used non-firearm weapons
##   based on the homicide_sample.csv dataset.
########################################################################

# Set Working Directory #
setwd("C:/Users/...") # Replace the content within the quotes with your selected working directory
getwd()

# Load Required Packages #
library(readr)
library(dplyr)
library(tidyr)

# Import and Explore Dataset #
homicide <- read_csv("homicide_sample.csv")
# Quick Data Overview
str(homicide)
head(homicide)

# Research Question # 
# What type of non-firearm weapon is most commonly used by women to commit homicide in the United States?

# Define Variables of Interest #
# 1. "Perpetrator.Sex" - Sex of perpetrator
# 2. "Weapon" - Type of weapon used
# 3. "nonfirearm" - Subset of "Weapon" using only non-firearm weapons (filtered dataset frame)

# One-Way Table: Perpetrator Sex #
table(homicide$Perpetrator.Sex)

# One-Way Proportion Frequency Table #
prop.table(table(homicide$Perpetrator.Sex))

# Filter Dataset Frame: Non-Firearm Weapons Only #
nonfirearm <- filter(homicide, Weapon == "Blunt Object" | Weapon == "Drowning"| Weapon == "Drugs" | 
                     Weapon == "Explosives" | Weapon == "Fall" | Weapon == "Fire" | Weapon == "Knife" |
                     Weapon == "Poison" | Weapon == "Strangulation" | Weapon == "Suffocation")

# Two-Way Table: Non-Firearm Weapon by Perpetrator Sex #
table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex)

# Two-Way Proportion Frequency Table (By Column): Non-Firearm Weapon by Perpetrator Sex #
prop.table(table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex), 2)
