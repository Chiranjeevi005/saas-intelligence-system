-- Average LTV

SELECT 
    ROUND(AVG(tenure * MonthlyCharges), 2) AS avg_ltv
FROM users;
