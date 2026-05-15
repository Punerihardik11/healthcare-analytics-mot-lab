-- Cost category classification

SELECT patient, payment,

CASE
    WHEN payment < 5000 THEN 'Low Cost'
    WHEN payment BETWEEN 5000 AND 10000 THEN 'Medium Cost'
    ELSE 'High Cost'
END AS cost_category

FROM claims;

-- Fraud risk classification

SELECT patient, payment,

CASE
    WHEN payment > 15000 THEN 'Fraud Risk'
    WHEN payment > 8000 THEN 'Review Needed'
    ELSE 'Normal'
END AS claim_status

FROM claims;

-- Count claims by category

SELECT

CASE
    WHEN payment < 5000 THEN 'Low Cost'
    WHEN payment BETWEEN 5000 AND 10000 THEN 'Medium Cost'
    ELSE 'High Cost'
END AS category,

COUNT(*) AS total_claims

FROM claims

GROUP BY category;
