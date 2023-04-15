-- SOLUTION QUERY 1:
SELECT client_id
FROM bank.client
WHERE district_id = 1
LIMIT 5;

-- SOLUTION QUERY 2:
SELECT MAX(client_id)
FROM bank.client
WHERE district_id = 72;

-- SOLUTION QUERY 3:
SELECT amount
FROM bank.loan
ORDER BY amount
LIMIT 3;

-- SOLUTION QUERY 4:
SELECT DISTINCT status
FROM bank.loan
ORDER BY status;

-- SOLUTION QUERY 5:
SELECT loan_id
FROM bank.loan
WHERE payments = (SELECT MAX(payments) FROM bank.loan);

-- SOLUTION QUERY 6:
SELECT account_id, amount
FROM bank.loan
ORDER BY account_id
LIMIT 5;

-- SOLUTION QUERY 7:
SELECT account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount
LIMIT 5;

-- SOLUTION QUERY 8:
SELECT DISTINCT k_symbol
FROM bank.order
WHERE k_symbol IS NOT NULL
ORDER BY k_symbol;

-- SOLUTION QUERY 9:
SELECT order_id
FROM bank.order
WHERE account_id = 34;

-- SOLUTION QUERY 10:
SELECT DISTINCT account_id
FROM bank.order
WHERE order_id BETWEEN 29540 and 29560;

-- SOLUTION QUERY 11:
SELECT amount
FROM bank.order
WHERE account_to = 30067122;

-- SOLUTION QUERY 12:
SELECT trans_id, date, type, amount
FROM bank.trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- SOLUTION QUERY 13:
SELECT district_id, COUNT(client_id)
FROM bank.client
WHERE district_id < 10
GROUP BY district_id;

-- SOLUTION QUERY 14:
SELECT type, COUNT(card_id)
FROM bank.card
GROUP BY type
ORDER BY 2 DESC;

-- SOLUTION QUERY 15:
SELECT account_id, sum(amount)
FROM bank.loan
GROUP BY account_id
ORDER BY 2 DESC
LIMIT 10;

-- SOLUTION QUERY 16:
SELECT date, COUNT(loan_id)
FROM bank.loan
WHERE date < 930907
GROUP BY date
ORDER BY 1 DESC;

-- SOLUTION QUERY 17:
SELECT DISTINCT date, duration, count(loan_id)
FROM bank.loan
WHERE date BETWEEN 971200 AND 971231
AND loan_id IS NOT NULL
GROUP BY date, duration
ORDER BY 1;

-- SOLUTION QUERY 18:
SELECT account_id, type, SUM(amount) as total_amount
FROM bank.trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY 3;