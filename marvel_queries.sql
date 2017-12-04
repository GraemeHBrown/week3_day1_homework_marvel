-- SELECT * FROM movies;

-- SELECT name FROM people;

-- UPDATE people SET name = 'Lorna Noble'
-- WHERE name = 'Lorna Nobel-Prize';
--
-- SELECT * FROM people;
-- SELECT name FROM people WHERE name ='Graeme Brown';


-- DELETE FROM movies WHERE title = 'Batman Begins' AND id = 9;
-- SELECT * FROM movies;

-- INSERT INTO people (name) VALUES ('Craig Morton');
-- SELECT * FROM people;

-- DELETE FROM people WHERE name = 'Alex Bazlinton' AND id = 21;
-- SELECT * FROM people;

-- INSERT INTO movies (title, year, show_time)
-- VALUES ('Guardians of the Galaxy 2',2017,'00:00');
--
-- SELECT * FROM movies;

-- UPDATE movies SET show_time = '21:30'
-- WHERE title = 'Guardians of the Galaxy' AND id = 11;

SELECT * FROM movies ORDER BY show_time;
