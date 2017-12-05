-- SELECT name, price FROM shows ORDER BY price ASC;
-- SELECT to_char(AVG (price),'FM999999999.00') AS average_price
-- FROM shows;

-- SELECT name, price FROM shows WHERE price  IN (SELECT MIN(price) FROM shows);
-- SELECT SUM (price) AS sum_of_price FROM shows;

-- SELECT SUM (price) AS sum_of_price_less_than_20 FROM shows WHERE price < 20.00;
--
-- SELECT name, price FROM shows WHERE price IN (SELECT MAX(price) FROM shows);

-- SELECT name, price FROM shows ORDER BY price ASC LIMIT 1 OFFSET 1;

-- SELECT name FROM users WHERE name LIKE 'M%' ORDER BY name;


SELECT name FROM users WHERE name LIKE '%er%' ORDER BY name;
