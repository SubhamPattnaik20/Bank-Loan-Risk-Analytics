# Bank Loan Risk Analytics

An end-to-end credit risk analytics pipeline covering exploratory data analysis, feature engineering, risk classification modeling, and an interactive Power BI dashboard for loan approval decision support.

## Overview

This project simulates a real-world bank risk assessment system: analyzing loan applicant data, engineering risk indicators, predicting default risk, and visualizing key risk metrics for underwriting decisions.

## Tech Stack

- **Python** — data cleaning, EDA, feature engineering, ML models
- **SQL (MySQL)** — data querying and business logic
- **Power BI** — interactive dashboard and DAX measures
- **Machine Learning** — Logistic Regression, Random Forest classification

## Pipeline

1. Data cleaning & EDA
2. Feature engineering (RiskCategory, LoanToIncomeRatio, AssetToLiabilityRatio)
3. MySQL database with business SQL queries
4. Logistic Regression model (98.93% accuracy)
5. Random Forest model (98.03% accuracy)
6. Power BI dashboard (5 pages)

## Key Insights



![Loan Approval Distribution](notebooks/images/loan_approval_distribution.png)




![Risk Score Distribution](notebooks/images/risk_score_distribution.png)




![Correlation Heatmap](notebooks/images/correlation_heatmap.png)




![Risk Score by Loan Approval Status](notebooks/images/risk_score_by_approval.png)




![Debt-to-Income Ratio by Loan Approval Status](notebooks/images/debt_to_income_by_approval.png)




![Loan Approval Rate by Employment Status](notebooks/images/approval_by_employment.png)




![Applicant Distribution by Risk Category](notebooks/images/applicant_by_risk_category.png)




![Top 10 Feature Importance (Random Forest)](notebooks/images/feature_importance.png)



## Dashboard Preview



![Overview](PowerBI/screenshots/1_overview.png)




![Risk Segments](PowerBI/screenshots/2_risk_segments.png)




![Approval Metrics](PowerBI/screenshots/3_approval_metrics.png)




![Model Insights](PowerBI/screenshots/4_model_insights.png)




![Summary](PowerBI/screenshots/5_summary.png)



## Author

Subham Pattnaik
[LinkedIn](https://linkedin.com/in/subham-pattnaik-0738bb324)
