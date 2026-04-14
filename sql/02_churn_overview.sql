-- Overall churn rate

SELECT 
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 
    2) AS churn_rate
FROM users;
