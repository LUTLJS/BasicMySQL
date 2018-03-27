/*MySQL OR operator will stop evaluating the remaining part of the statement when the
result is determined. For example:*/
SELECT True or False;
/*When MySQL evaluate the True ,it will return True and stop evaluate the False part.
*/
/*Following is the example of using customers table in the sample database.*/
SELECT
	customername, country
FROM
	customers
WHERE
	country = 'USA' OR country = 'France';
/*The query returns customers who locate in USA or France.*/
/*Operator precedence:
AND operator will be executed first before evaluating OR operator.

*/
