Patient Readmission Data Analysis
📘 Project Overview

This project analyzes hospital patient admission data to identify risk categories, admission trends, and illness distributions.
The analysis helps hospitals and healthcare analysts understand how factors such as blood pressure, blood sugar, and illness count relate to readmission risk.

🎯 Objectives

Clean and prepare the patient dataset for analysis.

Classify patients into risk levels (Low, Medium, High).

Explore relationships between gender, age, illness type, and admission frequency.

Generate visual insights using Python (matplotlib) and prepare the data for Power BI dashboarding.

Export cleaned data for further reporting and visualization.

🧩 Dataset Description

File: Patient_Readmission - Raw Data (1).csv

Column Name	Description
Patient_ID	Unique patient identifier
Gender	Patient gender (Male/Female)
Age	Patient’s age in years
Illness_1, Illness_2, Illness_3	Diagnosed illnesses
BP_Status	Blood pressure category (Normal, High, Low)
Sugar_Status	Blood sugar category (Normal, High, Low)
Cholesterol_Status	Cholesterol category (Normal, High, Low)
Admission_Count	Number of times the patient was admitted
Hospital_Name	Hospital of admission
🧹 Data Cleaning Steps

Removed nulls and duplicates (dropna, drop_duplicates)

Standardized column names and data types

Combined illness columns into a single category using melt()

Counted unique illnesses per patient

Validated value consistency for BP, Sugar, and Cholesterol statuses

🩺 Risk Classification Logic
Risk Level	Criteria
Low Risk	1 illness and all health measures are Normal
Medium Risk	2 illnesses and at least one High measure
High Risk	3 or more illnesses and any abnormal measure
Unclassified	Does not meet the above criteria
🧮 Tools & Libraries

Python: pandas, matplotlib

SQL: for grouping, filtering, and CASE classification

Excel / Power BI: for dashboard visualization and reporting

📊 Visualizations

Top 10 Illness Categories (Bar Chart)

Gender Distribution (Pie Chart)

Patient Risk Level Distribution (Bar Chart)

High-Risk Admissions by Hospital (Bar Chart)

📤 Output Files

Cleaned_Patient_Risk_Data.xlsx — Cleaned dataset with added risk classification column.

Ready for import into Power BI or Excel dashboards.

🚀 How to Run the Analysis

Clone the repository or download the files.

Ensure you have Python 3.8+ installed.

Install dependencies:

pip install pandas matplotlib openpyxl


Run the Python EDA script:

python patient_analysis.py


View charts in the output window and find the cleaned dataset in your project folder.

📈 Example Insights

Most patients are adults aged 36–55.

High-risk patients show a strong correlation with abnormal blood sugar and blood pressure levels.

Hospitals with frequent high-risk admissions may benefit from preventive care programs


# Patient-Readmission-[Readme file for Patient Readmisssion.docx](https://github.com/user-attachments/files/23307634/Readme.file.for.Patient.Readmisssion.docx)
