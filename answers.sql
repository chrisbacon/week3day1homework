-- 1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;

--  id |                title                | year | show_time 
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 15:40
--   2 | The Incredible Hulk                 | 2008 | 23:45
--   3 | Iron Man 2                          | 2010 | 17:45
--   4 | Thor                                | 2011 | 14:40
--   5 | Captain America: The First Avenger  | 2011 | 17:05
--   6 | Avengers Assemble                   | 2012 | 12:30
--   7 | Iron Man 3                          | 2013 | 18:00
--   8 | Thor: The Dark World                | 2013 | 18:55
--   9 | Batman Begins                       | 2005 | 16:30
--  10 | Captain America: The Winter Soldier | 2014 | 19:20
--  11 | Guardians of the Galaxy             | 2014 | 12:10
--  12 | Avengers: Age of Ultron             | 2015 | 23:40
--  13 | Ant-Man                             | 2015 | 18:20
--  14 | Captain America: Civil War          | 2016 | 22:00
--  15 | Doctor Strange                      | 2016 | 16:30
-- (15 rows)

-- 2. Return ONLY the name column from the 'people' table

SELECT name from people;

--        name        
-- -------------------
--  Chris Bacon
--  John Campbell
--  Jane Cargill
--  Patrick Collins
--  Stephanie Devine
--  Ben Faulkner
--  Cameron Fulton
--  Tegan Gallacher
--  Gregor Gilchrist
--  Claire Hilditch
--  Graeme Bell
--  Winnie Ho
--  Adam Leel
--  Lewis MacNee
--  Adam Nattrass
--  William Robertson
--  Jordan Said
--  Logan Smith
--  Frederico Zucca
-- (19 rows)

-- 3. Return ONLY your name from the 'people' table.

SELECT name 
FROM people
WHERE id = 1;

--     name     
-- -------------
--  Chris Bacon
-- (1 row)


-- 4. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies
WHERE title = 'Batman Begins';

-- DELETE 1

-- 5. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('John Harper');

-- INSERT 0 1

-- 6. Sadly, Graeme has hurt himself and wont be able to make it, Delete his entry from the 'people' table

DELETE FROM people
WHERE name = 'Graeme Bell';

-- DELETE 1

-- 7. Somehow the list of people includes two people named 'Adam'. Change these entries to the proper names (Jeff 3, Jeff 3.2)

UPDATE people 
SET name = 'Jeff 3.2'
WHERE name = 'Adam Leel';

UPDATE people 
SET name = 'Jeff 3'
WHERE name = 'Adam Nattrass';

-- UPDATE 1
-- UPDATE 1

-- 8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');

-- INSERT 0 1

-- 9. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30

UPDATE movies
SET show_time = '21:30'
WHERE title = 'Guardians of the Galaxy';

-- UPDATE 1

SELECT * FROM movies;
SELECT * FROM people;

-- Final tables!

--  id |                title                | year | show_time 
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 15:40
--   2 | The Incredible Hulk                 | 2008 | 23:45
--   3 | Iron Man 2                          | 2010 | 17:45
--   4 | Thor                                | 2011 | 14:40
--   5 | Captain America: The First Avenger  | 2011 | 17:05
--   6 | Avengers Assemble                   | 2012 | 12:30
--   7 | Iron Man 3                          | 2013 | 18:00
--   8 | Thor: The Dark World                | 2013 | 18:55
--  10 | Captain America: The Winter Soldier | 2014 | 19:20
--  12 | Avengers: Age of Ultron             | 2015 | 23:40
--  13 | Ant-Man                             | 2015 | 18:20
--  14 | Captain America: Civil War          | 2016 | 22:00
--  15 | Doctor Strange                      | 2016 | 16:30
--  16 | Guardians of the Galaxy 2           | 2017 | 00:00
--  11 | Guardians of the Galaxy             | 2014 | 21:30
-- (15 rows)

--  id |       name        
-- ----+-------------------
--   1 | Chris Bacon
--   2 | John Campbell
--   3 | Jane Cargill
--   4 | Patrick Collins
--   5 | Stephanie Devine
--   6 | Ben Faulkner
--   7 | Cameron Fulton
--   8 | Tegan Gallacher
--   9 | Gregor Gilchrist
--  10 | Claire Hilditch
--  12 | Winnie Ho
--  14 | Lewis MacNee
--  16 | William Robertson
--  17 | Jordan Said
--  18 | Logan Smith
--  19 | Frederico Zucca
--  20 | John Harper
--  13 | Jeff 3.2
--  15 | Jeff 3
-- (19 rows)



