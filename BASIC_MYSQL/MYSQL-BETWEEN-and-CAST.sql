/*BETWEEN operator allows us to determin
whether a value is in the range. */
SELECT 
	productCode, productName, buyPrice
FROM
	products
WHERE
	buyPrice BETWEEN 90 AND 100;
	/*buyPrice >= 90 AND <= 100;
	This should work too.*/

SELECT
	productCode, productName, buyPrice
FROM
	products
WHERE
	buyPrice NOT BETWEEN 20 AND 100;
	/*buyPrice < 20 AND buyPrice > 100;*/

/*Using CAST operator to convert the
literal strings '2003-01-01' to the
DATE data type.*/
SELECT 
	orderNumber, requiredDate, status
FROM
    orders
WHERE
	requiredDate
	BETWEEN CAST('2003-01-01' AS DATE)
			AND CAST('2003-01-31' AS DATE)

