-- Estimate customer lifetime (tenure-based)

SELECT 
    customerID,
    tenure,
    MonthlyCharges,
    (tenure * MonthlyCharges) AS estimated_ltv
FROM users;
