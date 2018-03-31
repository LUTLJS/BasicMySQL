/*LIKE operator and percentage wildcard and
underscore wildcard
% wildcard allows us to match any string
of zero or more characters.
_ wildcard allows us to match any single
character.*/
SELECT 
	employeeNumber, lastName, firstName
FROM
	employees
WHERE
	firstName LIKE 'a%';

SELECT 
	employeeNumber, lastName, firstName
FROM
	employees
WHERE
	lastName LIKE '%on%';


SELECT
	employeeNumber, lastName, firstName
FROM
	employees
WHERE
	lastName LIKE '%on%';

SELECT 
	employeeNumber, lastName, firstName
FROM
	employees
WHERE
	firstName LIKE 'T_m';

SELECT 
	employeeNumber, lastName, firstName
FROM
	employees
WHERE
	firstName NOT LIKE 'B%';

SELECT
	productCode, productName
FROM
	products
WHERE
	productCode LIKE '%\_20%';

SELECT
	productCode, productName
FROM
	products
WHERE
	productCode LIKE '%$_20%' ESCAPE '$';
/*The LIKE operator forces MySQL to scan the whole
table to find the matching rows,therefore,it 
does not allow the database engine to use an
index for fast searching.As a result,the performance
of the query that uses LIKE operator degrades
when querying data from a table that has a large
number of rows.*/