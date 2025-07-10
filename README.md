# Retention Cohorts Churn

## Project Access
  
- **Retention, Cohorts and Churn analysis (.xlsx)**  
  [Download here](https://github.com/AironasVin/Retention-Cohorts-Churn/blob/main/Retention%20Cohorts%20Churn.xlsx)

## Project Description

Analyze subscription churn with a **weekly retention** focus to catch insights that monthly views might miss.  
This project uses **BigQuery SQL** to calculate weekly retention for user cohorts (week 0 to week 6), then visualizes the trends in **Excel**.
**Key steps:**
- Understand subscription table schema (start/end dates, user IDs)
- Write SQL for weekly retention by cohort
- Export results (CSV or direct to Sheets/Tableau)
- Visualize with heatmaps or charts
- Interpret patterns to find drop-offs or high-retention cohorts

**Goal:** Reveal short-term retention trends to help reduce churn.

### Retained Customers Cohort
<img width="581" alt="image" src="https://github.com/user-attachments/assets/c54fe6a3-9bd4-4009-856b-97fde726961e" />

[SQL Query for Retention](https://github.com/AironasVin/Retention-Cohorts-Churn/blob/main/Retention.sql)

### Customer Retention Rate
<img width="557" alt="image" src="https://github.com/user-attachments/assets/5d244d02-5de3-4e4f-b47a-f0e3820d540b" />

[SQL Query for Retention Rate](https://github.com/AironasVin/Retention-Cohorts-Churn/blob/main/Retention_rate.sql)

### Retention Curve
<img width="553" alt="image" src="https://github.com/user-attachments/assets/99938389-7313-447c-a4d5-1b1f48bb3f85" />

## Insights:

**1. Customers acquired in December suggests strong performance:**

- Highest number of customers were acquired in 2020-12-06 and 2020-12-13 
- December cohorts maintain a strong retention rate over six weeks. 
- This suggests that campaigns and promotions in December could potentially be more effective at attracting and retaining customers.

**2. Customers acquired in November suggests weaker perfomance:** 

- Lowest number of customers were acquired in 2020-11-08 
- November cohorts show a steady decline in retention, with lowest retention rates across all weeks. 
- Possible reasons include seasonal effects or bad customer experience

**3. Retention Drops the most in first two weeks**

- The largest drop occurs in the first week (average 5% decrease)
- Second highest drop in customer retention is on the second week (average drop is 3%) 
- Improving onboarding, engagement and value delivery in the first two weeks could potentially be helpful for increasing retention

**4. 2020-12-20 and 2020-12-27 shows high retention rate despite lower acquisition** 

- This suggests that customers acquired later in December are more commited, likely due to end-of-year promotions and higher intent to stay engaged

**Recommendations:**

- Identify and implement strategies to improve onboarding, engagement and value delivery with first two weeks

- Identify the factors that contributed to strong retention rates for end of the December cohorts

- Assess and verify potential reasons for lower retention rate in November and verify them analyzing feedback of churned customers

**Further analysis:**

- Financial part of the story - how does monthly recurring revenue look? 
- Is there any country with significantly lower average retention rate?
