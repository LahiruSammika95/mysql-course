-----------tree------
-- 1.SELECT
-- 2.FROM
-- 3.WHERE
-- 4.ORDER BY
-- 5.LIMIt 

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 
WHERE points>1000
ORDER BY first_name;


-- ////////////////////////

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 
WHERE state = 'VA'
ORDER BY first_name;

-- ///////////////////////////

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 
WHERE birth_date > '1990-01-10'
ORDER BY first_name;

-- ////////////////////

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 
WHERE birth_date > '1990-01-10' AND points>1000
ORDER BY first_name;

-- ////////////////////

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 
WHERE birth_date < '1995-01-10' OR points>1000 AND state='VA'
ORDER BY first_name;

-- AND has higher priority than OR...Also we can use parenthesis to change the priority.parenthesis has the highest priority

-- //////////////////

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 
-- WHERE state='VA' OR state='FL' OR state='GA'
-- to get the same results we can use IN operator
WHERE state IN ('VA','FL','GA')
ORDER BY first_name;

-- ////////////////////

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 
WHERE state NOT IN ('VA','FL','GA')
ORDER BY first_name;

-- //////////////////////

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 
-- WHERE points >=1000 AND points <=3000
-- We can get the exact same result using between
WHERE points BETWEEN 1000 AND 3000
ORDER BY first_name;


-- /////////////////////

USE sql_store;

SELECT DISTINCT last_name,points,points+155 As modified_points
FROM customers 

WHERE birth_date BETWEEN '1990-01-10' AND '2000-01-10'
ORDER BY first_name;

-- //////////////////////
-- % for any number of characters .... _ for single character
USE sql_store;

SELECT DISTINCT first_name,points,points+155 As modified_points
FROM customers 
WHERE first_name LIKE 'e%'
ORDER BY first_name;

-- /////////////////////

USE sql_store;

SELECT DISTINCT first_name,address As modified_points
FROM customers 
WHERE address LIKE '%trail%' OR address LIKE '%avenue%'
ORDER BY first_name;

-- ///////////////////
USE sql_store;

SELECT DISTINCT last_name,address As modified_points
FROM customers 
WHERE last_name REGEXP 'be'
-- WHERE last_name REGEXP '^b'
ORDER BY first_name;

-- ///////////////////////

USE sql_store;

SELECT DISTINCT last_name,address As modified_points
FROM customers 
WHERE last_name REGEXP 'b|ab|ka'
ORDER BY first_name;

-- //////////////
-- ^ begining
-- $ end
-- | logical or
-- [abcd] any character a,b,c or d
-- [a-f] any character a to f

USE sql_store;

SELECT DISTINCT last_name,address As modified_points
FROM customers 
WHERE last_name REGEXP '^b|^ar|ka'
ORDER BY first_name;

-- ////////////////////

USE sql_store;

SELECT DISTINCT last_name,address As modified_points
FROM customers 
-- Here before b it can have either g or i or m
WHERE last_name REGEXP '[gim]e'
ORDER BY first_name;


-- ///////////////////////////

USE sql_store;

SELECT DISTINCT last_name,address As modified_points
FROM customers 
-- Here before b it can have any character between a to h
WHERE last_name REGEXP '[a-h]e'
ORDER BY first_name;


-- ///////////////// exersice


USE sql_store;

SELECT DISTINCT first_name,last_name,address As modified_points
FROM customers 
-- WHERE first_name REGEXP 'ELKA|AMBUR'
-- WHERE last_name REGEXP 'ey$|on$'
-- WHERE last_name REGEXP '^my|se'
WHERE last_name REGEXP 'b[ru]'
ORDER BY first_name;


-- ///////////////////////

USE sql_store;

SELECT DISTINCT first_name,last_name,address As modified_points
FROM customers 
WHERE phone IS NULL
-- WHERE phone IS NOT NULL
ORDER BY first_name;

-- ////////////////

USE sql_store;

SELECT *
FROM orders 
WHERE shipped_date IS NULL OR shipper_id IS NULL;

-- ////////////////////

USE sql_store;

SELECT *, quantity * unit_price AS total_price
FROM order_items 
WHERE order_id=2
ORDER BY total_price DESC

-- ///////////////////////

USE sql_store;

SELECT *
FROM order_items 
-- LIMIT 3
LIMIT 6,3
-- Here 6 means skip rows and 3 means num of rows
