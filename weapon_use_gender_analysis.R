# Crime #

############## Working Directory ##############
setwd("C:/Users/...")
getwd()
################# Packages ####################
library(readr)
library(dplyr)
library(tidyr)
###################################################
# Data Set #
###################################################
################ Import Data ################
homicide <- read_csv("HomicideSample.csv")
homicide
# Explore the Data Set
str(homicide)
head(homicide)
###################################################
#1.
###################################################
# Research Question #
###################################################
# What type of non-firearm weapon is a woman in #
# the United States most likely to use to commit #
# homicide #
###################################################
#2.
###################################################
# Variables #
###################################################
#1. Sex of perpetrator ("Perpetrator.Sex")
#2. Type of weapon used ("Weapon")
#3. New data frame for non-firearms only ("nonfirearm")
#4.
###################################################
# One-way Table #
###################################################
table(homicide$Perpetrator.Sex)
homicide$Perpetrator.Sex
######### Proportion (Frequency) Table #########
prop.table(table(homicide$Perpetrator.Sex))
#6.
###################################################
# Two-way Table #
###################################################
table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex)
table(homicide$Weapon)
################ Filtered Data ##################
# Non-firearms ONLY #
nonfirearm <- filter(homicide, Weapon == "Blunt Object" | Weapon == "Drowning"|
                       Weapon == "Drugs" | Weapon == "Explosives" |
                       Weapon == "Fall" | Weapon == "Fire" | Weapon == "Knife" |
                       Weapon == "Poison" | Weapon == "Strangulation" |
                       Weapon == "Suffocation")
str(nonfirearm)
table(nonfirearm$Weapon)
######### Proportion (Frequency) Table #########
prop.table(table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex))
# Sum by Column #
prop.table(table(nonfirearm$Weapon, nonfirearm$Perpetrator.Sex), 2)
