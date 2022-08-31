-- two dashes make a single line comment
-- neat

/*
multiline sql comment
*/

-- create a movies table
CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title TEXT,
  description TEXT,
  rating INTEGER
);