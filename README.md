# Homicide Weapon Analysis: Non-Firearm Use by Female Perpetrators in the U.S.


## Abstract
- **Research Question**: What type of non-firearm weapon is most commonly used by women to commit homicide in the United States?
- **Conclusion**: Among non-firearm weapons, **knives** account for over **60%** of homicides committed by female perpetrators.
- **Tools**: R, RStudio, dplyr, tidyr, readr
- **Skills**: Data wrangling, subsetting, proportion frequency analysis, contingency tables

---

## Project Overview

This project explores homicide data in the United States to answer a focused question about gendered patterns in weapon choice — specifically examining **non-firearm weapons used by female perpetrators**.

The analysis was performed entirely in R and focuses on summarizing categorical variables using frequency and proportion tables. Although simple in scope, the project demonstrates core data analysis skills: filtering, grouping, summarizing, and deriving insights from real-world datasets.

---

## Research Question

**What type of non-firearm weapon is most commonly used by women to commit homicide in the United States?**

---

## Methodology

- **Dataset**: `homicide_sample.csv`
- **Language**: R
- **Environment**: RStudio
- **Packages Used**:
  - `readr` for CSV handling
  - `dplyr` for data manipulation
  - `tidyr` for data reshaping

### Key Variables:
- `Perpetrator.Sex`
- `Weapon`

### Filtering:
To focus on non-firearm homicides, the dataset was filtered to exclude:
- `"Gun"`, `"Firearm"`, `"Handgun"`, `"Rifle"`, `"Shotgun"`, `"Unknown"`

Only these non-firearm weapons were retained:
- `"Knife"`, `"Blunt Object"`, `"Poison"`, `"Fire"`, `"Drugs"`, `"Strangulation"`, `"Suffocation"`, `"Drowning"`, `"Explosives"`, `"Fall"`

---

## Core Analysis

### One-Way Table: Perpetrator Sex

| Perpetrator Sex | Count  | Proportion |
|------------------|--------|------------|
| Female           | 4,808  | 7.57%      |
| Male             | 39,809 | 62.66%     |
| Unknown          | 18,916 | 29.77%     |

### Two-Way Table: Weapon Type × Perpetrator Sex (Non-Firearms Only)

| Weapon         | Female | Male   | Unknown |
|----------------|--------|--------|---------|
| Blunt Object   | 546    | 4,611  | 1,607   |
| Knife          | 1,397  | 5,892  | 1,624   |
| Fire           | 99     | 640    | 235     |
| Suffocation    | 108    | 695    | 218     |
| Other Non-Firearms | *(aggregated)* | — | — |

> **60.24%** of non-firearm homicides committed by women involved a **knife**.

---

## Key Findings

- The hypothesis that **knives are the most likely non-firearm weapon used by women** was supported.
- Knives were involved in **1,397 of 2,319** non-firearm female-perpetrated homicides.
- Possible explanations:
  - **Accessibility**: Knives are readily available in households.
  - **Familiarity**: Use of knives is common in daily life.
  - **Perceived Lower Risk**: May feel less confrontational than firearms.

---

## Potential Follow-Up

> **What socio-cultural factors influence weapon choice among female perpetrators?**

Future analysis could explore:
- Mental health records
- Domestic vs. non-domestic cases
- Regional differences or trends over time

---

## Dataset Limitations

- **Missing Values**: Many rows had `Unknown` for sex or weapon.
- **Unbalanced Classes**: Female perpetrators were a minority (≈7.6%).
- **Geographic Limitation**: U.S.-only data may not generalize globally.
- **No Contextual Data**: Lacks motive, victim-perpetrator relationship, or case outcome.

---

## How to Run the Project

1. **Install R and RStudio**
   - [R](https://cran.r-project.org/)
   - [RStudio](https://posit.co/download/rstudio-desktop/)

2. **Clone the Repository**
   ```bash
   git clone https://github.com/hgurr/homicide-weapon-analysis.git
   cd homicide-weapon-analysis
