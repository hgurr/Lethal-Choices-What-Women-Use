# Homicide Weapon Analysis: Non-Firearm Use by Female Perpetrators in the U.S.

## Abstract
- **Research Question**: What type of non-firearm weapon is most commonly used by women to commit homicide in the United States?
- **Conclusion**: Among non-firearm weapons, **knives** account for over **60%** of homicides committed by female perpetrators.
- **Tools**: R, RStudio, dplyr, tidyr, readr
- **Skills**: Data wrangling, subsetting, proportion analysis, contingency tables

---

## Project Overview

This project explores homicide data in the United States to answer a focused question about gendered patterns in weapon choice — specifically examining **non-firearm weapons used by female perpetrators**.

The analysis was conducted in R and focuses on summarizing categorical variables using frequency and proportion tables. Though the scope is focused, it demonstrates key data analysis competencies: filtering, grouping, summarizing, and drawing insights from real-world datasets.

---

## Research Question

> **What type of non-firearm weapon is most commonly used by women to commit homicide in the United States?**

---

## Methodology

- **Dataset**: `homicide_sample.csv`
- **Language**: R
- **Environment**: RStudio
- **Packages**:
  - `readr` for CSV handling
  - `dplyr` for data manipulation
  - `tidyr` for data reshaping

### Key Variables:
- `Perpetrator.Sex`
- `Weapon`

### Filtering Criteria:
To focus on non-firearm homicides, the dataset was filtered to **exclude**:
- `"Gun"`, `"Firearm"`, `"Handgun"`, `"Rifle"`, `"Shotgun"`, `"Unknown"`

Only the following non-firearm weapons were **included**:
- `"Knife"`, `"Blunt Object"`, `"Poison"`, `"Fire"`, `"Drugs"`, `"Strangulation"`, `"Suffocation"`, `"Drowning"`, `"Explosives"`, `"Fall"`

---

## Core Analysis

### One-Way Table: Perpetrator Sex

| Perpetrator Sex | Count  |
|------------------|--------|
| Female           | 4,808  |
| Male             | 39,809 |
| Unknown          | 18,916 |

### One-Way Proportion Table: Perpetrator Sex

| Perpetrator Sex | Proportion |
|------------------|------------|
| Female           | 7.57%      |
| Male             | 62.66%     |
| Unknown          | 29.77%     |

### Two-Way Table: Weapon Type × Perpetrator Sex (Non-Firearms Only)

| Weapon         | Female | Male   | Unknown |
|----------------|--------|--------|---------|
| Blunt Object   | 546    | 4,611  | 1,607   |
| Drowning       | 53     | 40     | 19      |
| Drugs          | 49     | 81     | 20      |
| Explosives     | 2      | 34     | 18      |
| Fall           | 1      | 15     | 4       |
| Fire           | 99     | 288    | 197     |
| Knife          | 1,397  | 6,103  | 1,985   |
| Poison         | 18     | 23     | 5       |
| Strangulation  | 46     | 366    | 376     |
| Suffocation    | 108    | 202    | 84      |

### Two-Way Proportion Table: Weapon Type × Perpetrator Sex (Non-Firearms Only)

| Weapon         | Female | Male   | Unknown |
|----------------|--------|--------|---------|
| Blunt Object   | 23.54% | 39.20% | 37.24%  |
| Drowning       | 2.29%  | 0.34%  | 0.44%   |
| Drugs          | 2.11%  | 0.69%  | 0.46%   |
| Explosives     | 0.09%  | 0.29%  | 0.42%   |
| Fall           | 0.04%  | 0.13%  | 0.09%   |
| Fire           | 4.27%  | 2.45%  | 4.57%   |
| Knife          | 60.24% | 51.88% | 46%     |
| Poison         | 0.78%  | 0.2%   | 0.12%   |
| Strangulation  | 1.98%  | 3.11%  | 8.71%   |
| Suffocation    | 4.66%  | 1.72%  | 1.95%   |

> **60.24%** of non-firearm homicides committed by women involved a **knife**.

---

## Conclusion

- The hypothesis that **knives are the most likely non-firearm weapon used by women** was confirmed.
- Knives were involved in **1,397 of 2,319** non-firearm female-perpetrated homicides.
- Potential factors behind this trend:
  - **Accessibility**: Knives are common household items.
  - **Familiarity**: Most people use knives regularly.
  - **Perceived Risk**: May feel less aggressive or attention-grabbing than firearms.

---

## Potential Follow-Up Questions

> **What socio-cultural factors influence weapon choice among female perpetrators?**

With additional data, future exploration could include:
- Psychological and mental health profiles
- Domestic vs. non-domestic scenarios
- Regional or temporal weapon use patterns

---

## Limitations

- **Missing Values**: A significant number of rows had `Unknown` values for weapon and perpetrator sex.
- **Sample Imbalance**: Female perpetrators account for just ~7.6% of the dataset.
- **U.S-Only Data**: Cannot generalize findings to global trends.
- **Context Missing**: No motive, relationship, or legal outcome included.

---

## How to Run

1. **Install R and RStudio**
   - [R Download](https://cran.r-project.org/)
   - [RStudio Download](https://posit.co/download/rstudio-desktop/)

2. **Clone the Repository**
   ```bash
   git clone https://github.com/hgurr/homicide-weapon-analysis.git
   cd homicide-weapon-analysis

3. **Open `nonfirearm_weapon_homicides.R` in RStudio**

4. **Install Required Packages**
   ```bash
   install.packages(c("readr", "dplyr", "tidyr"))
5. **Run the Script**

Ensure homicide_sample.csv is in your working directory.
- Click **Source** to run the whole script, or
- Run line-by-line for step-by-step execution

---

## Project Structure
   ```bash
homicide-weapon-analysis/
├── nonfirearm_weapon_homicides.R      # Main R analysis script
├── homicide_sample.csv                # Dataset
├── homicide_sample_codebook.pdf       # Dataset codebook
└── README.md                          # Documentation and summary
