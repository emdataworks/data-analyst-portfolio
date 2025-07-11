# 🗺️ US Household Income - SQL Exploratory Data Analysis

This project explores household income distribution across US states using SQL. The dataset combines land/water area information and household income statistics.

## 📊 Dataset Overview

- `us_household_income`: Contains geographic and area data for each region.
- `us_household_income_statistics`: Contains income statistics such as mean and median values.

## 🔍 Analysis Performed

1. Top/bottom 10 states by land and water area.
2. Joined datasets to enrich the analysis.
3. Filtered data to exclude zero/invalid income records.
4. Calculated average household income by:
   - State
   - Household type
   - City
5. Identified highest and lowest earning regions.

## 💡 Key Insights

- States with the largest land area include Texas and California.
- States like New Jersey and Rhode Island have the smallest land areas.
- The highest average incomes are found in states like District of Columbia and Connecticut.
- Certain household types consistently show higher earnings.

## 📁 Files

- `US_Household_Income_EDA.sql`: SQL queries for all analysis.
- `insights_summary.md` (optional): Plain-language summary of findings.

## 🛠️ Tools Used

- SQL (MySQL)
- MySQL Workbench
- PowerBi

To complement the SQL analysis, a visualization dashboard was created to explore income distributions interactively.

▶️ **View the Dashboard:** [Power BI PDF](https://github.com/emdataworks/data-analyst-portfolio/blob/9d33899d10183915598bbb0eadb079a39df5c2e2/us-household-income-sql-eda/US%20Household%20Income%20Vizualization.pdf)

The dashboard includes:
- Income averages by state
- Top earning cities
- Household income by type
- State land and water area comparisons
