CREATE DATABASE healthcare;

USE healthcare;

CREATE TABLE claims (
    claim_id INT,
    patient VARCHAR(50),
    provider VARCHAR(50),
    specialty VARCHAR(50),
    payment INT
);

INSERT INTO claims VALUES
(1, 'Raj', 'Apollo', 'Cardiology', 9000),
(2, 'Amit', 'Ruby Hall', 'Neurology', 4000),
(3, 'Sneha', 'Apollo', 'Cardiology', 12000),
(4, 'Tina', 'Jehangir', 'Orthopedic', 3000),
(5, 'Arjun', 'Ruby Hall', 'Cardiology', 7000);

SELECT * FROM claims;

SELECT provider, payment
FROM claims;

SELECT patient
FROM claims;

SELECT provider, specialty
FROM claims;

SELECT patient, payment
FROM claims;

SELECT * FROM claims
WHERE payment > 5000;

SELECT * FROM claims
WHERE payment > 7000;

SELECT * FROM claims
WHERE specialty = 'Cardiology';

SELECT * FROM claims
WHERE payment < 5000;

SELECT * FROM claims
WHERE specialty = 'Cardiology'
AND payment > 7000;

SELECT * FROM claims
WHERE specialty = 'Cardiology'
AND payment > 5000;

SELECT * FROM claims
WHERE specialty = 'Neurology'
OR specialty = 'Orthopedic'

SELECT * FROM claims
WHERE payment > 3000
AND payment < 10000;

SELECT * FROM claims
ORDER BY payment ASC;


SELECT * FROM claims
ORDER BY payment DESC;

SELECT * FROM claims
LIMIT 3;

SELECT * FROM claims
ORDER BY payment DESC
LIMIT 2;

SELECT DISTINCT provider
FROM claims;

SELECT DISTINCT payment
FROM claims;