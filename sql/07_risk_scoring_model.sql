WITH base_features AS (
    SELECT customerID,
        Contract,
        InternetService,
        TRIM(PaymentMethod) AS PaymentMethod
    FROM users
    WHERE Contract IS NOT NULL
        AND InternetService IS NOT NULL
        AND PaymentMethod IS NOT NULL
),
scored_users AS (
    SELECT customerID,
        /* Risk scoring logic */
        (
            CASE
                WHEN Contract = 'Month-to-month' THEN 3
                ELSE 0
            END + CASE
                WHEN InternetService = 'Fiber optic' THEN 2
                ELSE 0
            END + CASE
                WHEN PaymentMethod = 'Electronic check' THEN 2
                ELSE 0
            END
        ) AS risk_score
    FROM base_features
),
risk_classification AS (
    SELECT customerID,
        risk_score,
        CASE
            WHEN risk_score >= 6 THEN 'High'
            WHEN risk_score BETWEEN 3 AND 5 THEN 'Medium'
            ELSE 'Low'
        END AS risk_level
    FROM scored_users
),
final_distribution AS (
    SELECT risk_level,
        COUNT(*) AS user_count
    FROM risk_classification
    GROUP BY risk_level
)
SELECT r.risk_level,
    r.user_count,
    ROUND(
        r.user_count * 100.0 / SUM(r.user_count) OVER (),
        2
    ) AS percentage
FROM final_distribution r
ORDER BY CASE
        r.risk_level
        WHEN 'High' THEN 1
        WHEN 'Medium' THEN 2
        ELSE 3
    END;