-- Churn by contract type

SELECT 
    Contract,
    COUNT(*) AS total_users,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_users,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 
    2) AS churn_rate
FROM users
GROUP BY Contract
ORDER BY churn_rate DESC;
