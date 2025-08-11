########################################################################
## Title: Non-Firearm Weapons Used by Women in the United States
## Author: Hallie Gurr
## Date: 02-11-2024
## Description:
##   Reads in homicide sample data, filters for non-firearm weapons,
##   and analyzes cases involving female perpetrators. The script
##   generates one-way and two-way frequency tables, as well as
##   one-way and two-way proportion frequency tables.
## Input:  HomicideSample.csv
## Output: One-way and two-way tables, and proportion frequency tables
########################################################################

# Set Working Directory #
setwd("C:/Users/...") # Replace the content within the quotes with your selected working directory
getwd()

# Load Required Packages #
library(readr)
library(dplyr)
library(tidyr)

# Import and Explore Dataset #
homicide <- read_csv("HomicideSample.csv")
# Quick Data Overview
str(homicide)
head(homicide)

# Research Question (1) # 
# What type of non-firearm weapon is a woman in the United States most likely to use to commit homicide?

# Define Variables of Interest (2) #
# 1. "Perpetrator.Sex" - Sex of perpetrator
# 2. "Weapon" - Type of weapon used
# 3. "nonfirearm" - Subset of Weapons for non-firearm weapons only (created)

# One-Way Table: Perpetrator Sex (4) #
table(homicide$Perpetrator.Sex)

# One-Way Proportion Frequency Table (4) #
prop.table(table(homicide$Perpetrator.Sex))

# Filter and Explore Dataset: Non-Firearm Weapons Only #
nonfirearm <- filter(homicide, Weapon == "Blunt Object" | Weapon == "Drowning"|
                       Weapon == "Drugs" | Weapon == "Explosives" |
                       Weapon == "Fall" | Weapon == "Fire" | Weapon == "Knife" |
                       Weapon == "Poison" | Weapon == "Strangulation" |
                       Weapon == "Suffocation")

# Two-Way Table: Non-Firearm Weapon by Perpetrator Sex (6) #
table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex)

# Two-Way Proportion Frequency Table (By Column): Non-Firearm Weapon by Perpetrator Sex (6) #
prop.table(table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex), 2)
