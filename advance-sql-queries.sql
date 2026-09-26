SELECT paymentDate, SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
HAVING SUM(amount) > 50000
ORDER BY total_payment DESC
LIMIT 5;

-- question2
SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;
-- question3
SELECT productCode, quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;
-- question 4
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
