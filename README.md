# Diabetes Healthcare Analytics Project

## Overview

This project explores diabetes patient data using SQL and Python to uncover health trends, identify high-risk patients, and analyze relationships between medical indicators such as glucose levels, BMI, age, insulin, and blood pressure.

The goal of this project is to simulate a real-world healthcare analytics workflow commonly used by data analysts and healthcare organizations.

---

## Project Objectives

* Analyze diabetes patient health metrics
* Identify high-risk diabetes patterns
* Perform SQL-based healthcare analysis
* Practice data cleaning and exploratory analysis
* Build a professional healthcare analytics portfolio project

---

## Tools & Technologies

### Programming & Analysis

* Python
* SQL (MySQL)
* Pandas
* NumPy

### Visualization

* Matplotlib

### Development Tools

* VS Code
* Jupyter Notebook
* Git & GitHub

---

## Dataset Information

The dataset contains medical diagnostic measurements used to predict diabetes outcomes.

### Features Included

* Pregnancies
* Glucose
* Blood Pressure
* Skin Thickness
* Insulin
* BMI
* Diabetes Pedigree Function
* Age
* Outcome

---

## SQL Analysis Performed

### 1. BMI Category Analysis

Patients were grouped into:

* Underweight
* Normal
* Overweight
* Obese

### 2. Age Group Diabetes Risk

Analyzed diabetes outcomes across different age groups.

### 3. High-Risk Patient Detection

Identified patients with:

* Extremely high glucose
* High BMI
* Elevated insulin levels

### 4. Correlation Analysis

Studied relationships between:

* BMI vs Outcome
* Glucose vs Diabetes Risk
* Age vs Diabetes Outcome

### 5. Window Function Queries

Used advanced SQL window functions to rank and analyze patient metrics.

---

## Example SQL Query

```sql
SELECT
    CASE
        WHEN BMI < 18.5 THEN 'Underweight'
        WHEN BMI BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN BMI BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obese'
    END AS BMI_Category,

    COUNT(*) AS Total_Patients,
    ROUND(AVG(Glucose), 2) AS Avg_Glucose,
    ROUND(AVG(Outcome), 2) AS Diabetes_Rate

FROM diabetes
GROUP BY BMI_Category
ORDER BY Avg_Glucose DESC;
```

---

## Python Analysis

Python was used for:

* Data cleaning
* Exploratory Data Analysis (EDA)
* Statistical summaries
* Data visualization

### Visualizations Created

* Age distribution histograms
* BMI trend analysis
* Glucose vs Outcome scatter plots
* Risk distribution charts

---

## Key Insights

* Higher glucose levels strongly correlate with positive diabetes outcomes.
* Obese patients showed significantly higher diabetes risk.
* Older age groups demonstrated increased diabetes prevalence.
* Patients with high BMI and insulin levels were more likely to test positive for diabetes.

---

## Project Structure

```text
diabetes-healthcare-analysis/
│
├── dataset/
│   └── diabetes.csv
│
├── queries/
│   ├── correlation_type_analysis.sql
│   ├── Diabetes_Range_by_Age_Group.sql
│   ├── Highest_BMI_Patients.sql
│   ├── Top_10_Highest_Risk_Patients.sql
│   └── Window_Function_Query.sql
|
├── notebook/
│   ├── data
|   └── Diabetes_Health_Analysis.ipynb
│
├── visuals/
│   └── charts_and_graphs.png
│
└── README.md
```

---

## Skills Demonstrated

* SQL Query Optimization
* Healthcare Data Analytics
* Data Cleaning
* Exploratory Data Analysis
* Statistical Analysis
* Data Visualization
* GitHub Project Organization

---

## Future Improvements

* Build an interactive Power BI dashboard
* Add predictive machine learning models
* Deploy analytics dashboard online
* Integrate real-world healthcare datasets
* Create automated reporting pipelines

---

## Why This Project Matters

Healthcare analytics is one of the fastest-growing fields in data analytics. This project demonstrates practical analytical skills using real healthcare-style data and showcases the ability to work across SQL, Python, and visualization tools in a complete analytics workflow.

---

## Author

Martin Mwinyi

* Aspiring Data Analyst
* Healthcare Analytics Enthusiast
* SQL & Python Developer
