-- 1
use bank;
select * from client;
select client_id
from client
where district_id=1
limit 5;

-- 2
select * from client;
select client_id
from client
where district_id = 72
order by client_id desc
limit 1;


-- 3
select*from loan;
select amount 
from loan
order by amount asc
limit 3;

-- 4
select*from loan;
select status 
from loan
GROUP BY status
order by status asc;

-- 5
select*from loan;
select loan_id
from loan 
order by payments desc
limit 1;


-- 6
select*from loan;
select account_id, amount
from loan
order by account_id asc
limit 5;


-- 7
select*from loan;
select account_id, amount, duration 
from loan
where duration =60
order by amount asc
limit 5;


-- 8
SELECT * FROM bank.order;
select k_symbol from bank.order 
where k_symbol is not NULL
AND k_symbol <> ' '
GROUP BY k_symbol;


-- 9
SELECT * FROM bank.order;
select order_id
from bank.order
where account_id=34;


-- 10 
SELECT * FROM bank.order;
select account_id
from bank.order
WHERE order_id >= 29540
        AND order_id < 29560
        GROUP BY account_id;
        

-- 11
SELECT * FROM bank.order;
select amount
FROM bank.order
	WHERE account_to =30067122;
    
    
    
-- 12
SELECT * FROM trans;
select trans_id, date, type, amount
from trans
where account_id=793
order by date desc
limit 10;


-- 13 
select * from client;
SELECT district_id, COUNT(district_id) AS count
from client
where district_id <10
group by district_id
order by count desc;


-- 14
select * from card;
SELECT type, COUNT(type) AS count
	FROM card
    GROUP BY type
    ORDER BY count desc;
    
    
-- 15 
select * from loan;
select account_id, sum(account_id) as count
from loan
GROUP BY account_id
    ORDER BY count desc
    limit 10;
    

-- 16
select*from loan;
select date, count(*) as numloans
from loan
where date <'930907'
group by date
order by date DESC;

-- 17
select distinct date, duration,  count(loan_id) as numloans
from loan
where date between '971201' and '971231'
group by date, duration
having count(loan_id) >=1
order by date, duration ASC; 

-- 18
select account_id, type, sum(amount) as total_amount
from trans
where account_id=396
group by account_id, type
order by type ASC;