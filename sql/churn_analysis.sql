-- ============================
-- Customer Churn SQL Analysis
-- ============================

-- 1. Churn distribution
SELECT Churn, COUNT(*) AS customer_count
FROM customers
GROUP BY Churn;

-- 2. Churn percentage
SELECT
  Churn,
  COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers) AS churn_percentage
FROM customers
GROUP BY Churn;

-- 3. Contract-wise churn analysis
SELECT Contract,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       ROUND(
         100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
         2
       ) AS churn_rate_percentage
FROM customers
GROUP BY Contract;

-- 4. High-risk customers
SELECT COUNT(*) AS high_risk_customers
FROM customers
WHERE tenure < 12 AND MonthlyCharges > 70;

-- 5. Churn rate among high-risk customers
SELECT
  Churn,
  COUNT(*) * 100.0 / (
    SELECT COUNT(*)
    FROM customers
    WHERE tenure < 12 AND MonthlyCharges > 70
  ) AS percentage
FROM customers
WHERE tenure < 12 AND MonthlyCharges > 70
GROUP BY Churn;
