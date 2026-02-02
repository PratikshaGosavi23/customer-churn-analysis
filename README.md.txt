# Customer Churn Analysis

## Overview
This project analyzes customer churn in a telecom company to understand 
why customers leave and identify high-risk customers using data analysis.

The goal is to provide actionable business insights that can help improve 
customer retention strategies.

---

## Dataset
- Telco Customer Churn Dataset (IBM sample data)
- Total records: 7,043 customers
- Total features: 21

---

## Tools & Technologies
- Python
- Pandas
- Matplotlib
- Seaborn
- Google Colab

---

## Key Business Questions
- How many customers are churning?
- Do new customers churn more than long-term customers?
- Does contract type affect churn?
- Are high-paying customers more likely to leave?

---

## Key Insights

### 1. Tenure vs Churn
Customers with shorter tenure are significantly more likely to churn.  
This indicates that early-stage customer engagement is critical.

![Tenure vs Churn](outputs/tenure_vs_churn.png)

---

### 2. Monthly Charges vs Churn
Customers with higher monthly charges tend to churn more, suggesting 
price sensitivity or perceived value issues.

![Monthly Charges vs Churn](outputs/monthly_charges_vs_churn.png)

---

## Churn Risk Segmentation
Customers were grouped into:
- High Risk
- Medium Risk
- Low Risk

This helps prioritize retention efforts instead of treating all customers equally.

---

## Conclusion
The analysis shows that customer churn is strongly influenced by tenure, 
contract type, and monthly charges. Businesses should focus on retaining 
new and high-paying customers through targeted engagement strategies.

---

## Future Work
- Build a churn prediction model
- Create a dashboard for real-time churn monitoring
