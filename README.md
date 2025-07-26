# 🧼 HR Survey Cleaning Project

This project simulates a common data cleaning and transformation task faced by analysts and data scientists: working with messy, inconsistent HR survey data. Using raw CSV input and SQL (via SQLite), we clean the dataset, normalize fields, and produce a report-ready version with clean categories and standardized metrics.

---

## 📂 Project Structure

- `hr_survey_messy.csv` – Raw HR survey data with inconsistent formatting, missing values, and redundant categories
- `cleaning.sql` – SQL scripts to clean and transform the raw data
- `reporting.sql` – SQL queries for reporting key survey metrics
- `hr_survey_cleaned.db` – SQLite database with clean final tables

---

## 🔧 Cleaning Tasks Performed

- Normalized satisfaction levels (`high`, ` med`, etc.)
- Standardized binary responses (`Yes`, ` no`, `Y`, etc.)
- Cleaned department names (`hr`, `Human Resources`, etc.)
- Converted manager feedback scores into numeric scale
- Removed nulls, whitespace-only strings, and duplicates

---

## 📊 Key Output Metrics

- % satisfied employees
- % who would recommend the company
- Avg. manager score by department
- Most common feedback comments

---

## 🚀 How to Run

1. Open `hr_survey_cleaned.db` with DB Browser for SQLite or your preferred SQL IDE.
2. Run the queries in `cleaning.sql` followed by `reporting.sql`.

---

## ✅ Why This Project Matters

This project demonstrates:
- Real-world data cleaning and SQL transformation skills
- Communication of data issues and remediation steps
- A key competency for any data analyst or BI role
