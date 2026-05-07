-- Add a signup_date column to customers table
ALTER TABLE customers ADD COLUMN signup_date DATE;

-- Update customers with sample signup dates
UPDATE customers SET signup_date = '2021-03-15' WHERE customer_id = 1;
UPDATE customers SET signup_date = '2022-07-22' WHERE customer_id = 2;
UPDATE customers SET signup_date = '2022-12-05' WHERE customer_id = 3;
UPDATE customers SET signup_date = '2023-01-18' WHERE customer_id = 4;
UPDATE customers SET signup_date = '2023-06-09' WHERE customer_id = 5;
UPDATE customers SET signup_date = '2023-09-27' WHERE customer_id = 6;
UPDATE customers SET signup_date = '2024-02-14' WHERE customer_id = 7;
UPDATE customers SET signup_date = '2024-04-02' WHERE customer_id = 8;

-- Write your code here
select extract(year from signup_date) as signup_year,
    count(*) as signup_count
from customers
group by extract(year from signup_date)
order by signup_year
