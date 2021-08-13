--Add 3 new artists to the artist table using INSERT. (It’s already created.)
INSERT INTO artist(name)
VALUES ('Young Thug')

INSERT INTO artist (name)
VALUES ('Metro Boomin')

INSERT INTO artist (name)
VALUES ('Don Toliver')

--Select 5 artists in alphabetical order.
SELECT artist_id FROM artist
ORDER by name DESC
LIMIT 5

--List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

--Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to = 2;

--Count how many people live in Lethbridge.
SELECT first_name, last_name FROM employee
WHERE city = 'Lethbridge';

--Count how many orders were made from the USA.
SELECT COUNT(invoice_id) FROM invoice
WHERE billing_country = 'USA'

--Find the largest order total amount.
SELECT MAX(total) FROM invoice;

--Find the smallest order total amount.
SELECT MIN(total) FROM invoice;

--Find all orders bigger than $5.
SELECT invoice_id FROM invoice 
WHERE total>5;

--Count how many orders were smaller than $5.
SELECT COUNT(*) FROM invoice
WHERE total< 5;

--Get the total sum of the orders.
SELECT SUM(total) FROM invoice;

--Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * 
FROM invoice
WHERE invoice_id IN(
SELECT invoice_id FROM invoice_line
  WHERE invoice_line.unit_price > .99
)

--Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

--Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id

--Get the album title and the artist name from all albums.
SELECT album.title, artist.name
FROM album
JOIN artist
ON album.artist_id = artist.artist_id

