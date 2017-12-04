# SQL Homework

The Dominion Cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.
SQL STATEMENT: SELECT * FROM movies;
OUTPUT: 
id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 17:30
  2 | The Incredible Hulk                 | 2008 | 17:10
  3 | Iron Man 2                          | 2010 | 20:05
  4 | Thor                                | 2011 | 21:05
  5 | Captain America: The First Avenger  | 2011 | 12:05
  6 | Avengers Assemble                   | 2012 | 13:05
  7 | Iron Man 3                          | 2013 | 22:00
  8 | Thor: The Dark World                | 2013 | 19:30
  9 | Batman Begins                       | 2005 | 14:25
 10 | Captain America: The Winter Soldier | 2014 | 20:15
 11 | Guardians of the Galaxy             | 2014 | 17:55
 12 | Avengers: Age of Ultron             | 2015 | 21:10
 13 | Ant-Man                             | 2015 | 20:40
 14 | Captain America: Civil War          | 2016 | 13:50
 15 | Doctor Strange                      | 2016 | 21:30
 16 | Guardians of the Galaxy 2           | 2017 | 15:50
(16 rows)

2. Return ONLY the name column from the 'people' table
SQL STATEMENT: SELECT name FROM people;
OUTPUT:
       name        
-------------------
 Dave Ellis
 Joe Ryan
 Richard Allison
 Alison Wood
 Olga Maunsell
 Graeme Brown
 Eric Carles
 David Rawson
 Ross Hill
 Mark Blanford
 Douglas Sangster
 Giuseppe Ibba
 Kris Anderson
 Vishal Sharma
 Manny Chita
 Amy Morrison
 Joe Plevin
 Robert Henderson
 Max Robson
 Lorna Nobel-Prize
 Alex Bazlinton
(21 rows)

3. Oops! Someone at CodeClan spelled Lorna's name wrong! Change it to reflect the proper spelling (Noble)
SQL STATEMENT:  UPDATE people SET name = 'Lorna Noble' WHERE name = 'Lorna Nobel-Prize';
OUTPUT:

UPDATE 1

 id |       name       
----+------------------
  1 | Dave Ellis
  2 | Joe Ryan
  3 | Richard Allison
  4 | Alison Wood
  5 | Olga Maunsell
  6 | Graeme Brown
  7 | Eric Carles
  8 | David Rawson
  9 | Ross Hill
 10 | Mark Blanford
 11 | Douglas Sangster
 12 | Giuseppe Ibba
 13 | Kris Anderson
 14 | Vishal Sharma
 15 | Manny Chita
 16 | Amy Morrison
 17 | Joe Plevin
 18 | Robert Henderson
 19 | Max Robson
 21 | Alex Bazlinton
 20 | Lorna Noble
(21 rows)


4. Return ONLY your name from the 'people' table.
SQL STATEMENT: SELECT name FROM people WHERE name ='Graeme Brown'; 

OUTPUT:  
     name     
--------------
 Graeme Brown
(1 row)


5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
SQL STATEMENT: DELETE FROM movies WHERE title = 'Batman Begins' AND id = 9;

OUTPUT:  


DELETE 1
 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 17:30
  2 | The Incredible Hulk                 | 2008 | 17:10
  3 | Iron Man 2                          | 2010 | 20:05
  4 | Thor                                | 2011 | 21:05
  5 | Captain America: The First Avenger  | 2011 | 12:05
  6 | Avengers Assemble                   | 2012 | 13:05
  7 | Iron Man 3                          | 2013 | 22:00
  8 | Thor: The Dark World                | 2013 | 19:30
 10 | Captain America: The Winter Soldier | 2014 | 20:15
 11 | Guardians of the Galaxy             | 2014 | 17:55
 12 | Avengers: Age of Ultron             | 2015 | 21:10
 13 | Ant-Man                             | 2015 | 20:40
 14 | Captain America: Civil War          | 2016 | 13:50
 15 | Doctor Strange                      | 2016 | 21:30
 16 | Guardians of the Galaxy 2           | 2017 | 15:50
(15 rows)


6. Create a new entry in the 'people' table with the name of one of the instructors
SQL STATEMENT: INSERT INTO people (name) VALUES ('Craig Morton');


OUTPUT:
INSERT 0 1
 id |       name       
----+------------------
  1 | Dave Ellis
  2 | Joe Ryan
  3 | Richard Allison
  4 | Alison Wood
  5 | Olga Maunsell
  6 | Graeme Brown
  7 | Eric Carles
  8 | David Rawson
  9 | Ross Hill
 10 | Mark Blanford
 11 | Douglas Sangster
 12 | Giuseppe Ibba
 13 | Kris Anderson
 14 | Vishal Sharma
 15 | Manny Chita
 16 | Amy Morrison
 17 | Joe Plevin
 18 | Robert Henderson
 19 | Max Robson
 21 | Alex Bazlinton
 20 | Lorna Noble
 22 | Craig Morton
(22 rows)

7. Alex has decided to hijack our movie evening, Remove him from the table of people.
SQL STATEMENT:  DELETE FROM people WHERE name = 'Alex Bazlinton' AND id = 21;

OUTPUT:  

DELETE 1
 id |       name       
----+------------------
  1 | Dave Ellis
  2 | Joe Ryan
  3 | Richard Allison
  4 | Alison Wood
  5 | Olga Maunsell
  6 | Graeme Brown
  7 | Eric Carles
  8 | David Rawson
  9 | Ross Hill
 10 | Mark Blanford
 11 | Douglas Sangster
 12 | Giuseppe Ibba
 13 | Kris Anderson
 14 | Vishal Sharma
 15 | Manny Chita
 16 | Amy Morrison
 17 | Joe Plevin
 18 | Robert Henderson
 19 | Max Robson
 20 | Lorna Noble
 22 | Craig Morton
(21 rows)



8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
9. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 17:55 to 21:30

## Extension

1. Research how to delete multiple entries from your table in a single command.

## Extra Extension

- see the extended_homework folder
