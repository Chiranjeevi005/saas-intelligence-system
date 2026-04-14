-- High-risk segment identification (multi-factor)

SELECT 
    Contract,
    InternetService,
    TRIM(PaymentMethod) AS payment_method,

    COUNT(*) AS total_users,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_users,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 
    2) AS churn_rate

FROM users

WHERE 
    Contract = 'Month-to-month'
    AND InternetService IS NOT NULL
    AND PaymentMethod IS NOT NULL

GROUP BY 
    Contract,
    InternetService,
    TRIM(PaymentMethod)

HAVING 
    COUNT(*) >= 50

ORDER BY 
    churn_rate DESC,
    total_users DESC;
