-- 1.LIMIT
--     SELECT occurred_at,account_id,channel
-- 	FROM web_events
--    LIMIT 15;


-- 2.ORDER BY
-- Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.
-- SELECT id,occurred_at,total_amt_usd
--     FROM orders
--     ORDER BY occurred_at
-- LIMIT 10;


-- 3.DESC
-- Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id, and total_amt_usd.
-- SELECT id,account_id, total_amt_usd
--     FROM orders
--     ORDER BY total_amt_usd DESC
-- LIMIT 5;


-- 4.return smalleast data
-- Write a query to return the lowest 20 orders in terms of smallest total_amt_usd. Include the id, account_id, and total_amt_usd.
-- SELECT id,account_id,total_amt_usd
--     FROM orders
--     ORDER BY total_amt_usd 
-- LIMIT 20;


-- 5.Other usages of DESC
-- Write a query that displays the order ID, account ID, and total dollar amount for all the orders, sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).
-- SELECT id, account_id, total_amt_usd 
--     FROM orders
--     ORDER BY account_id, total_amt_usd DESC; 


-- 6.DESC usage types
-- Now write a query that again displays order ID, account ID, and total dollar amount for each order, but this time sorted first by total dollar amount (in descending order), and then by account ID (in ascending order).
-- SELECT id,account_id,total_amt_usd
--     FROM orders
--     ORDER BY total_amt_usd DESC, account_id;


-- 7.WHERE
-- Pulls the first 5 rows and all columns from the orders table that have a dollar amount of gloss_amt_usd greater than or equal to 1000.
-- SELECT *
-- 	FROM orders
--     WHERE gloss_amt_usd >=1000
--     LIMIT 5;


-- 8.WHERE
-- Pulls the first 10 rows and all columns from the orders table that have a total_amt_usd less than 500.
-- SELECT *
--     FROM orders
--     WHERE total_amt_usd < 500
--     LIMIT 10;


-- 9.WHERE with another data types
-- Filter the accounts table to include the company name, website, and the primary point of contact (primary_poc) just for the Exxon Mobil company in the accounts table.
-- SELECT name,website,primary_poc
--     FROM accounts
--     WHERE name= 'Exxon MObil';


-- 10.Arithmetic Operators
-- Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order. Limit the results to the first 10 orders, and include the id and account_id fields.
-- SELECT id,account_id,
--     standard_amt_usd/standard_qty AS unit_price
--     FROM orders
--     LIMIT 10;


-- 11.DIVIDE operation
-- Write a query that finds the percentage of revenue that comes from poster paper for each order. You will need to use only the columns that end with _usd. (Try to do this without using the total column.) Display the id and account_id fields also. NOTE - you will receive an error with the correct solution to this question. This occurs because at least one of the values in the data creates a division by zero in your formula. You will learn later in the course how to fully handle this issue. For now, you can just limit your calculations to the first 10 orders, as we did in question #1, and you'll avoid that set of data that causes the problem.
-- SELECT id,account_id,
--     poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) AS post_per
--     FROM orders
--     LIMIT 10;


-- 12.LIKE OPERATOR
-- All the companies whose names start with 'C'.
-- SELECT name
--     FROM accounts
--     WHERE name LIKE '%C%';


-- 13.LIKE
-- All companies whose names contain the string 'one' somewhere in the name.
-- SELECT name
--     FROM accounts
--     WHERE name LIKE '%one%';


-- 14.LIKE
-- All companies whose names end with 's'.
-- SELECT name
--     FROM accounts
--     WHERE name LIKE '%s%';


15.