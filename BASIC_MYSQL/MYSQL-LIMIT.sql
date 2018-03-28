/*The following is the LIMIT clause syntax with two
arguments:*/
SELECT 
	column1,column2,...
FROM
	table
LIMIT offset, count;
/*The offset specifies the offset of the first
row to return.And the offset of the first row is
0,not 1.
The count specifies the maximum number of rows 
to return.
Get the first N rows.*/
SELECT
	customernumber,
	customername,
	creditlimit
FROM
	customers
LIMIT 10;
/*Get the highest and lowest values.
*/
SELECT
 customernumber,
 customername,
 creditlimit
FROM
 customers
ORDER BY
 creditlimit DESC
LIMIT 5;

SELECT
 customernumber,
 customername,
 creditlimit
FROM
 customers
ORDER BY
 creditlimit ASC
LIMIT 5;

/*Get the nth highest value.
*/
SELECT
 productName,
 buyprice
FROM
 products
ORDER BY
 buyprice DESC
LIMIT 1, 1;
