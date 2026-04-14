-- Validate dataset size and churn distribution

SELECT 
    COUNT(*) AS total_users,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_users,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS active_users
FROM users;
