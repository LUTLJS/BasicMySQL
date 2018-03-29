/*IN operator:
When the values in the list are all constants:
First,MySQL evaluates the calues based on the type
of the column_1 or the result of expr expression,
Second,MySQL sorts the values.
Third,MySQL searches for values using binary
search algorithm.Therefore,a query that uses the 
IN operator with a list of constants will 
perform very fast.*/
/*Get the offices in USA and France*/
SELECT 
	officeCode, city, phone, country
FROM
	offices
WHERE
	country IN ('USA', 'France');
/*Get  offices that do not locate in USA and France
*/
SELECT
	officeCode, city, phone, country
From
	offices
WHERE
	country NOT IN ('USA', 'France');
/*Find orders whose total amounts are greater
than 60000:*/
SELECT 
	orderNumber, customerNumber, status, shippedDate
FROM 
	orders
WHERE
	orderNumber IN (SELECT 
					orderNumber
				FROM
					orderDetails
				GROUP BY orderNumber
				HAVING SUM(quantityOrdered * 
							priceEach) > 60000
					);
