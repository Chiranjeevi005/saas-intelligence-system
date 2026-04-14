WITH ltv_calc AS (
    SELECT AVG(tenure * MonthlyCharges) AS avg_ltv
    FROM users
)

SELECT 
    avg_ltv,
    650 AS cac,
    ROUND(avg_ltv / 650.0, 2) AS ltv_cac_ratio
FROM ltv_calc;
