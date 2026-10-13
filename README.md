# Customer Churn Analysis

## Project Overview
This project analyzes customer churn for a telecommunications company using the IBM Telco Customer Churn dataset. The goal is to understand which customer groups are more likely to leave and identify opportunities to improve customer retention.

## Business Problem
Customer churn can reduce recurring revenue and increase the cost of acquiring replacement customers. This analysis explores churn patterns across contract types, tenure, internet service, payment methods, monthly charges, and support/security services.

## Objectives
- Clean and prepare the dataset for analysis.
- Measure overall churn and retention rates.
- Compare churn patterns across customer segments.
- Use SQL to answer business questions.
- Build an interactive Power BI dashboard.
- Recommend practical actions to improve retention.

## Tools Used
- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** SQL Server / SQL Server Management Studio
- **Power BI Desktop:** KPI cards and interactive charts
- **Jupyter Notebook:** Exploratory data analysis

## Dataset
The project uses the IBM Telco Customer Churn dataset.

- Original dataset: `data/WA_Fn-UseC_-Telco-Customer-Churn.csv`
- Cleaned dataset: `data/CustomerChurn_Cleaned.csv`
- Original records: 7,043 rows and 21 columns
- Cleaned records: 7,032 rows and 21 columns

## Data Cleaning
- Checked the dataset for duplicate rows; no duplicate rows were found.
- Converted `TotalCharges` from text to numeric.
- Found 11 missing `TotalCharges` values. These records had zero tenure and no accumulated total charges, so they were removed from the analysis.
- Saved the cleaned dataset for use in Python, SQL, and Power BI.

## Analysis Performed

### Python
- Overall churn and retention rates
- Churn by contract type
- Churn by tenure group
- Churn by monthly charges
- Churn by internet service and payment method
- Churn by tech support and online security
- Churn comparisons across multiple customer attributes
- Review of potential high-risk customer segments

### SQL
- Total, churned, and retained customer counts
- Overall churn and retention rates
- Churn by contract, payment method, and internet service
- Churn by tenure group, tech support, online security, and senior-citizen status
- Combined contract and internet-service analysis
- Monthly-charge groups
- Exploration of a potential high-risk customer segment

### Power BI
The dashboard summarizes key customer metrics and visual comparisons, including:
- Total customers
- Churned customers
- Churn rate
- Retention rate
- Churn patterns by contract, internet service, payment method, tenure, tech support, online security, and monthly charges
- A potential high-risk customer segment

## Key Metrics
After cleaning, the analysis includes **7,032 customers**. The dashboard shows:
- **Churned customers:** 1,869
- **Churn rate:** 26.58%
- **Retention rate:** 73.42%

## Business Insights
The analysis is designed to help identify customer groups that may need additional retention support. The segments examined include customers on month-to-month contracts, customers with different internet services, customers with shorter tenure, and customers without tech support or online security.

Segment-level results should be interpreted as associations, not proof that any one factor causes churn.

## Recommendations
- Review the customer experience for month-to-month customers and consider suitable longer-term plan incentives.
- Provide proactive onboarding and follow-up for newer customers.
- Review support and security service options for customers who do not use them.
- Investigate customer feedback and service issues among segments with higher observed churn.
- Monitor churn and retention metrics regularly to evaluate whether retention initiatives are working.

## Project Structure
```text
Customer_Churn_Analysis/
├── data/
│   ├── WA_Fn-UseC_-Telco-Customer-Churn.csv
│   └── CustomerChurn_Cleaned.csv
├── notebooks/
│   └── Customer_Churn_Analysis.ipynb
├── sql/
│   └── customer_churn_analysis.sql
├── dashboard/
│   └── Customer_Churn_Dashboard.pbix
├── images/
│   └── customer_churn_dashboard.png
├── reports/
└── README.md
```

## How to Use This Project
1. Open `notebooks/Customer_Churn_Analysis.ipynb` in Jupyter Notebook.
2. Ensure the cleaned CSV is available in the `data/` folder.
3. Open `sql/customer_churn_analysis.sql` in SQL Server Management Studio and run the queries against the imported `customer_churn` table in `CustomerChurnDB`.
4. Open `dashboard/Customer_Churn_Dashboard.pbix` in Power BI Desktop.
5. If file paths or table names differ on your computer, update them before running.

## Limitations
- This is an exploratory analysis of historical customer data.
- The observed relationships do not establish causation.
- The high-risk segment is a descriptive segment, not a validated predictive model.

## Author
Data Analyst Portfolio Project
