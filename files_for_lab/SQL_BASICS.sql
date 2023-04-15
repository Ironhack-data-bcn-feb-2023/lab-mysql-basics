USE bank;
select * from client;

-- QUERY 1

select client_id, birth_number, district_id
	from client
		where district_id = "1"
        LIMIT 5;
  
  -- QUERY 2
  
select client_id
	FROM client
		where district_id = "72"
        order by client_id desc
        limit 1;


-- QUERY 3

use bank;
select * from loan;

select amount
	FROM loan
		order by amount asc
        limit 3;
        
-- QUERY 4

SELECT distinct status FROM loan
	order by status asc;
    
    
-- QUERY 5

SELECT loan_id
	from loan
		order by payments desc
			limit 1;
            
-- QUERY 6

SELECT account_id, amount
	from loan
		order by account_id asc
        limit 5;
        
-- QUERY 7

SELECT account_id
	from loan
		WHERE duration = "60"
        order by amount ASC
        limit 5;
        
-- QUERY 8

USE BANK;
select * from `order`;

SELECT distinct K_SYMBOL FROM `ORDER`;

-- QUERY 9

SELECT order_id
	from `order`
    WHERE account_id = "34";
    
    
-- QUERY 10

SELECT order_id, account_id
    from `order`
    WHERE order_id BETWEEN 29540 AND 29560;



-- QUERY 11

SELECT amount
    FROM `order`
     WHERE account_to = "30067122";
     
     
-- QUERY 12

USE bank;

SELECT trans_id, date, type, amount

FROM trans
WHERE account_id = "793"

ORDER BY trans.date DESC
LIMIT 10;

-- QUERY 13
USE BANK;
SELECT * FROM CLIENT;

select district_id, COUNT(*) AS client_id
FROM client
where district_id < 10
group by district_id
order by district_id ASC;

-- QUERY 14

SELECT * FROM CARD;

SELECT type, COUNT(*) AS card_id
FROM card
GROUP BY type
ORDER BY card_id DESC;


-- QUERY 15

SELECT * FROM LOAN;

SELECT account_id, SUM(amount) AS total_loan_amount
FROM loan
GROUP BY account_id
ORDER BY total_loan_amount DESC
LIMIT 10;

-- QUERY 16

select * from loan;

select date, count(loan_id) AS num_loans
from loan 
where date < 930907
group by date
order by date DESC;

-- QUERY 17

SELECT date, DURATION, COUNT(loan_id) as num_loans
FROM loan
WHERE date >= '971200' AND date < '971232'
GROUP BY date, duration
HAVING num_loans > 0
ORDER BY date ASC, duration ASC;


-- QUERY 18

select * from trans;

SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396 AND (type = 'VYDAJ' OR type = 'PRIJEM')
GROUP BY account_id, type
ORDER BY type ASC;

