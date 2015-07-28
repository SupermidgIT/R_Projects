SQL REFERENCE

/// Create a table with Unique identifier and primary key
CREATE TABLE genres (id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(30) NOT NULL UNIQUE KEY);

//selects all rows from movies table
SELECT * FROM movies;

SELECT * FROM movies WHERE year = 1999;

/// select all movies sorted by year
SELECT * FROM movies ORDER BY year desc;

/// Selects all movies limits to 1000 rows first starts with 11th row.
SELECT * FROM movies LIMIT 10,1000;

/// Inserts into genres table the value sci fi into the column name.
INSERT INTO genres (name) VALUES("Sci Fi");

/// Adding a Primary Key column to the movies table.
ALTER TABLE movies ADD COLUMN id INTEGER AUTO_INCREMENT PRIMARY KEY FIRST;

/// Adds a foreign key to the movie table referencing the genre id from the genre table.
ALTER TABLE movies ADD COLUMN genre_id INTEGER NULL, ADD CONSTRAINT FOREIGN KEY (genre_id) REFERENCES genres(id);

// relates the genre_id column with the value of 1 to the movies_id with values of 8 or 9;
UPDATE movies SET genre_id = 1 WHERE id = 8 OR id = 9;

// Joins the data from the two tables movies and genres where genre_id  from movies table = id in the genres table.
SELECT * FROM movies INNER JOIN genres ON movies.genre_id = genres.id;

/// retreives data from the Right table with the related data from the left table.
SELECT * FROM movies RIGHT OUTER JOIN genres ON movies.genre_id = genres.id;

SELECT movies.title, genres.name 
FROM movies RIGHT OUTER JOIN genres 
ON movies.genre_id = genres.id
WHERE genres.name IS NOT null;

/// Aggregate functions minimum, maximum, count, sum, average
SELECT MIN(score) AS minimum_score, MAX(score) AS maximum_score, SUM(score) / COUNT(score), AVG(score) FROM reviews WHERE movie_id = 1;

// Aggregate functions by Group with a Outer Join
SELECT title, MIN(score) AS minimum_score, 
MAX(score) AS maximum_score, 
SUM(score) AS SUM, 
IFNULL(AVG(score), 0) AS average 
FROM movies LEFT OUTER JOIN reviews 
ON movies.id = reviews.movie_id
GROUP BY movie_id;


//// HAVING is the WHERE of Aggregates
GROUP BY movie_id HAVING average > 3;

/// Aggregate functions for strings LENGTH, LOWER, UPPER
SELECT LENGTH(username) AS username_length, 
LOWER(email), first_name, 
UPPER(last_name) 
FROM users HAVING username_length < 19;

// Concatenate and Substring functions
CONCAT(first_name, ' ',last_name) AS full_name,

/// Indexing lastname to speed up performance
CREATE INDEX last_name_idx ON users(last_name); 


/// Create a new user
GRANT SELECT
ON treehouse_movie_db.*
  TO user1@'%'
IDENTIFIED BY 'password';

/// Resets user access for new users
FLUSH PRIVILEGES;
