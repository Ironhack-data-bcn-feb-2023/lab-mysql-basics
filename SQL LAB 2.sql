-- Primera query;
SELECT client_id, birth_number, district_id
	FROM client
	WHERE district_id = "1"
		LIMIT 5;
        
-- Segunda query
SELECT client_id, birth_number, district_id
	FROM CLIENT
    WHERE district_id = "72"
    ORDER BY client_id  desc;
    
-- tercera query
SELECT amount
	FROM loan
    ORDER BY amount asc
    LIMIT 3;

 -- cuarta query
 SELECT loan.status
	FROM loan
    ORDER BY loan.status desc
    LIMIT 4;
    
-- quinta query
SELECT loan_id, payments
	FROM loan
    ORDER BY payments desc
    LIMIT 1;
    
-- sexta query
SELECT account_id, amount, loan_id
	FROM loan
    ORDER BY loan_id asc
    LIMIT 5;
    
-- septima query
SELECT account_id, amount, loan_id, duration
	FROM loan
    WHERE duration = "60"
    ORDER BY amount asc;
    
-- otcava query
SELECT DISTINCT k_symbol
FROM `order`;

-- novena query
SELECT order_id, account_id
	from `order`
    WHERE account_id = "34";
    
-- decima query

SELECT order_id, account_id
	from `order`
    WHERE order_id BETWEEN 29540 AND 29560;
    
-- query 11

SELECT account_id, account_to, amount
	FROM `order`
     WHERE account_to = "30067122";

-- query 12
SELECT trans_id, `date`, `type`, amount
		FROM trans
		WHERE account_id = '793'
		ORDER BY trans.date desc limit 10;
        
-- query 13
SELECT district_id, client_id
	FROM `client`
    WHERE district_id BETWEEN 1 AND 9;
    
-- QUERY 14
SELECT * FROM CARD;

SELECT card.type, COUNT(card.type) AS TOTAL
FROM card
GROUP BY card.type
ORDER BY TOTAL asc;


-- QUERY 15
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
    
    
    
 
    
