--START Q4
SELECT id,account_id,occurred_at
FROM orders
LIMIT 5;

--END Q4

--START Q5

--START Q7
SELECT id, occurred_at,total_amt_usd
from orders
order by occurred_at
limit 10;

--END Q7

--START Q8
SELECT id,account_id,total_amt_usd
from orders
order by total_amt_usd DESC
limit 5;

--END Q8

--START Q9
SELECT id,account_id,total_amt_usd
from orders
order by total_amt_usd
limit 5;

--END Q9

--START Q11
SELECT id,occurred_at,total_amt_usd
FROM orders
ORDER BY occurred_at desc, total_amt_usd desc
LIMIT 5;

--END Q11

--START Q13
SELECT *
FROM orders
WHERE total_amt_usd<=500
limit 5;

--END Q13

--START Q16
SELECT id,account_id,standard_amt_usd/standard_qty as “unit_price”
FROM orders
LIMIT 5;
--END Q16

--START Q18
SELECT *
FROM accounts
WHERE name LIKE '%one%';
--END Q18

--START Q19
SELECT *
FROM accounts
WHERE name LIKE 'C%';
--END Q19

--START Q21
SELECT *
FROM web_events
WHERE channel in('organic','adwords');
--END Q21

--START Q23
SELECT *
FROM web_events
WHERE channel NOT IN ('organic','adwords')
limit 5;
--END Q23

--START Q24
SELECT *
FROM accounts
WHERE name NOT LIKE 'C%';
--END Q24

--START Q26
SELECT *
FROM orders
WHERE standard_qty>1000 AND poster_qty=0 AND gloss_qty=0
--END Q26

--START Q27
SELECT *
FROM web_events
WHERE channel in ('organic','adwords')AND occurred_at between '01-01-2016' and '2017-01-01'
ORDER BY occurred_at DESC
limit 5;
--END Q27

--START Q30
SELECT id
FROM orders
WHERE gloss_qty>4000 OR poster_qty>4000
limit 5;
--END Q30

--START Q31
SELECT *
FROM orders
WHERE standard_qty=0 and (gloss_qty>1000 or poster_qty>1000)
LIMIT 5;
--END Q31

--START Q32
SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') AND (primary_poc like '%ana%' or primary_poc like '%Ana%') AND primary_poc NOT LIKE '%eana%';
--END Q32

--START Q33
SELECT *
FROM web_events
WHERE occurred_at between '01-06-2016' and '2016-08-01';
--END Q33
