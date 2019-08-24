
-- a b c
select client_name, city from client;
select * from product;
select client_name from client where client_name like '_a%';

-- d e
select * from client where city like 'Tezpur';
select * from product;
select * from product where sell_price between 2001 AND 5000;


-- f

ALTER TABLE product
ADD COLUMN `new_price` DECIMAL(10,2) NULL;

-- g h




-- i
select * from `transactions`;

-- j


delete FROM `transactions` where sales_order_date < '08-08-25';

-- k

UPDATE transactions
SET
`delivery_date`='16-aug-08'
WHERE 'order_id'='O08';

-- l
UPDATE client
SET
total_balance=1200
WHERE 'client_id'= 'c03';
-- m
select * from product where p_desc like 'HDD1034' or 'DVDRW';
-- n
select client_name,city,State from client where State != 'Assam';
-- o
select * from transactions where cancel_date like '%-mar-%';
