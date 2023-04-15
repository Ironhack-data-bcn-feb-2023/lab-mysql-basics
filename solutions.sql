USE bank;
-- QUERY 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY 1 
LIMIT 5;

-- QUERY 2
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY 1 DESC
LIMIT 1;

-- QUERY 3
SELECT amount
FROM loan
ORDER BY 1
LIMIT 3;

-- QUERY 4
SELECT DISTINCT status
FROM loan
ORDER BY 1;

-- QUERY 5
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- QUERY 6
SELECT account_id
	,amount
FROM loan
ORDER BY 1
LIMIT 5;

-- QUERY 7
SELECT account_id
FROM LOAN
WHERE duration = 60
ORDER BY amount 
LIMIT 5;

-- QUERY 8
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY 1;

-- QUERY 9
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- QUERY 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- QUERY 11
SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- QUERY 12
SELECT trans_id
	,date
    ,type
    ,amount
FROM trans
WHERE account_id = 793
ORDER BY 2 DESC
LIMIT 10;

-- QUERY 13
SELECT district_id
	,COUNT(client_id)
FROM client
WHERE district_id < 10
GROUP BY 1
ORDER BY 1;

-- QUERY 14
SELECT type
	,COUNT(card_id)
FROM card
GROUP BY 1
ORDER BY 2 DESC;

-- QUERY 15
SELECT account_id
	,SUM(amount)
FROM loan
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- QUERY 16 ## I'm not receiving the same output as the one on the READM.md file
SELECT date
	,COUNT(loan_id)
FROM loan
WHERE date < 930907
GROUP BY 1
ORDER BY 1 DESC;

-- QUERY 17
SELECT date
	,duration
    ,COUNT(loan_id)
FROM loan
WHERE date BETWEEN 971200 AND 971231
GROUP BY 1, 2
ORDER BY 1, 2;

-- QUERY 18
SELECT account_id
	,type
	,SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY 2
