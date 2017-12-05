## SQL Questions

First create a database called fringe_shows
```
  #terminal
  psql
  create database fringe_shows;
  \q
```

Populate the data using the script - fringeshows.sql
```
  #terminal
  psql -d fringe_shows -f fringeshows.sql
```

Using the SQL Database file given to you as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.



## Section 1

  This section involves more complex queries.  You will need to go and find out about aggregate funcions in SQL to answer some of the next questions.

  1. Select the names and prices of all shows, ordered by price in ascending order.

  SQL STATEMENT: SELECT name, price FROM shows ORDER BY price ASC;

  OUTPUT: 

                    name                   | price 
-----------------------------------------+-------
 Two girls, one cup of comedy            |  6.00
 Best of Burlesque                       |  7.99
 Two become One                          |  8.50
 Urinetown                               |  8.50
 Paul Dabek Mischief                     | 12.99
 Le Haggis                               | 12.99
 Joe Stilgoe: Songs on Film – The Sequel | 16.50
 Game of Thrones - The Musical           | 16.50
 Shitfaced Shakespeare                   | 16.50
 Aaabeduation – A Magic Show             | 17.99
 Camille O'Sullivan                      | 17.99
 Balletronics                            | 32.00
 Edinburgh Royal Tattoo                  | 32.99
(13 rows)

  10. Select the average price of all shows.
  SQL STATEMENT:  SELECT to_char(AVG (price),'FM999999999.00') AS average_price
  
  OUTPUT:

  average_price 
---------------
 15.96
(1 row)


  11. Select the price of the least expensive show.
SQL STATEMENT: SELECT name, price FROM shows WHERE price = (SELECT MIN(price) FROM shows);

OUTPUT:
               name             | price 
------------------------------+-------
 Two girls, one cup of comedy |  6.00
(1 row)

  12. Select the sum of the price of all shows.
SQL STATEMENT: SELECT SUM (price) AS sum_of_price FROM shows;

OUTPUT:  
 sum_of_price 
--------------
       207.44
(1 row)


  13. Select the sum of the price of all shows whose prices is less than £20.
  SQL STATEMENT: SELECT SUM (price) AS sum_of_price_less_than_20 FROM shows WHERE price < 20.00;

  OUTPUT:
   sum_of_price_less_than_20 
---------------------------
                    142.45
(1 row)

  14. Select the name and price of the most expensive show.
SQL STATEMENT: SELECT name, price FROM shows WHERE price IN (SELECT MAX(price) FROM shows);

OUTPUT:
            name          | price 
------------------------+-------
 Edinburgh Royal Tattoo | 32.99
(1 row)

  15. Select the name and price of the second from cheapest show.

  SQL STATEMENT: SELECT name, price FROM shows ORDER BY price ASC LIMIT 1 OFFSET 1;

  OUTPUT:

         name        | price 
-------------------+-------
 Best of Burlesque |  7.99
(1 row)

  16. Select the names of all users whose names start with the letter "M".

  SQL STATEMENT: SELECT name FROM users WHERE name LIKE 'M%' ORDER BY name;

  OUTPUT:

       name      
---------------
 Manny Chita
 Mark Blanford
 Max Robson
(3 rows)

  17. Select the names of users whose names contain "er".

  SQL STATEMENT: SELECT name FROM users WHERE name LIKE '%er%' ORDER BY name;

  OUTPUT:
  
       name       
------------------
 Douglas Sangster
 John Harper
 Kris Anderson
 Robert Henderson
(4 rows)



## Section 2

  The following questions can be answered by using nested SQL statements but ideally you should learn about JOIN clauses to answer them.

  10. Select the time for the Edinburgh Royal Tattoo.

  19. Select the number of users who want to see "Shitfaced Shakespeare".

  20. Select all of the user names and the count of shows they're going to see.

  21. SELECT all users who are going to a show at 17:15.
