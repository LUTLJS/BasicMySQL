SELECT 1 = 0 AND 1 / 0 ;
/*The result would be 0.
When evaluating an expression that has the AND operator, MySQL evaluates the remaining parts of the expression until it can determine the result. 
This function is called short-circuit evaluation.
MySQL only evaluates the first part 1 = 0 of the expression 1 = 0 AND 1  / 0. 
Because the expression 1 = 0 returns false, MySQL can conclude the result of the whole expression, which is false. 
MySQL then does not evaluate the remaining part of the expression, which is 1/0; If it does, it will issue an error because of the division by zero error.
*/
SELECT 
	customername,country,state,creditlimit
FROM
	customers
WHERE
	country = 'USA' AND state = 'CA' AND creditlimit > 100000;