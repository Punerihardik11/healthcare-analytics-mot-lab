-- Day 02 - SQL Aggregations Practice Queries
INSERT INTO claims VALUES
(1, 'Raj', 'Apollo', 'Cardiology', 9000),
(2, 'Amit', 'Ruby Hall', 'Neurology', 4000),
(3, 'Sneha', 'Apollo', 'Cardiology', 12000),
(4, 'Tina', 'Jehangir', 'Orthopedic', 3000),
(5, 'Arjun', 'Ruby Hall', 'Cardiology', 7000),
(6, 'Karan', 'Apollo', 'Neurology', 15000),
(7, 'Meera', 'Jehangir', 'Cardiology', 8500),
(8, 'Rohit', 'Ruby Hall', 'Orthopedic', 2000),
(9, 'Anaya', 'Apollo', 'Cardiology', 11000),
(10, 'Vikas', 'Jehangir', 'Neurology', 6000),
(11, 'Sara', 'Ruby Hall', 'Cardiology', 7500),
(12, 'Nina', 'Apollo', 'Orthopedic', 4500);

SELECT specialty, AVG(payment)
FROM claims
GROUP BY specialty;

SELECT provider, AVG(payment)
FROM claims
GROUP BY provider;

SELECT specialty, COUNT(*)
FROM claims
GROUP BY specialty;

SELECT provider, SUM(payment)
FROM claims
GROUP BY provider;

SELECT specialty, SUM(payment)
FROM claims
GROUP BY specialty
ORDER BY SUM(payment) DESC;

-- 1. Average payment by specialty.
SELECT specialty, AVG(payment)
FROM claims
GROUP BY specialty;

-- 2. Total payment by provider.
SELECT provider, SUM(payment)
FROM claims
GROUP BY provider;

-- 3. Count claims per provider.
SELECT provider, COUNT(*)
FROM claims
GROUP BY provider;

-- 4. Highest total-paying specialties
SELECT specialty, SUM(payment)
FROM claims
GROUP BY specialty
ORDER BY SUM(payment) DESC;

-- 5. Providers with average payment above 7000.
SELECT provider, AVG(payment)
from claims
GROUP BY provider
HAVING AVG(payment) > 7000;

-- 6. Lowest average specialty payments.
SELECT specialty, AVG(payment)
FROM claims
GROUP BY specialty
ORDER BY AVG(payment) ASC;

-- 7. Top 2 providers by Total payment
SELECT provider, SUM(payment)
FROM claims
GROUP BY provider
ORDER BY SUM(payment) DESC
LIMIT 2;

-- 8. Count claims by specialty.
SELECT specialty, COUNT(*)
FROM claims
GROUP BY specialty;

-- 9. Specialties with more than 2 claims 
SELECT specialty, COUNT(*)
FROM claims
GROUP BY specialty
HAVING COUNT(*) > 2;

-- 10. Average payment by provider sorted highest first
SELECT provider, AVG(payment)
FROM claims
GROUP BY provider
ORDER BY AVG(payment) DESC;