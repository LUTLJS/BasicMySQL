/*By default,the ORDER BY clause
sorts the result set in ascending order
if we dont specify ASC or DESC explicitly.*/
SELECT
	contactLastname, contactFirstname
FROM
	customers
ORDER BY
	contactLastname;

SELECT
	contactLastname, contactFirstname
FROM
	customers
ORDER BY
	contactLastname DESC;

SELECT
	contactLastname, contactFirstname
FROM
	customers
ORDER BY
	contactLastname DESC,
	contactFirstname ASC;

/*Sort the result set based on an expression.
We can use the column alias as the following
query.*/
SELECT
    ordernumber,
    orderlinenumber,
    quantityOrdered * priceEach AS subtotal
FROM
    orderdetails
ORDER BY
    ordernumber,
    orderLineNumber,
    /*quantityOrdered * priceEach*/
	subtotal;

/*custom sort order by using the FIELD() function
*/
SELECTorderdetails
	orderNumber, status
FROM
	orders
ORDER BY 
	FIELD(status,
		'In Process',
		'On Hold',
		'Cancelled',
		'Resolved',
		'Disputed',
		'Shipped');