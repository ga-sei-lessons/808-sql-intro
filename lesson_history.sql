\q 
\q
cd something
\q
\?
\l
\list
CREATE DATABASE testdb;
;
\l
\c testdb
\dt
DROP DATABASE movie_lesson;
CREATE TABLE students (id SERIAL PRIMARY KEY,name TEXT,phone VARCHAR(15),email TEXT);
\dt 
\d students
\d students
INSERT INTO students (name, phone, email)VALUES ('Ammon', '(555)555-5555', 'ammon@GA.com');
INSERT INTO students (name, phone, email)VALUES ('Tyler', '(222)222-2222', 'tyler@GA.com');
SELECT * FROM students;
;
INSERT INTO students(name, phone, email)VALUES ('Bob Jones', '(415)555-5555', 'bob@example.com');
SELECT * FROM students WHERE name = 'Ammon';
SELECT phone FROM students WHERE name = 'Ammon';
SELECT name, phone, id FROM students WHERE name = 'Ammon';
SELECT Name, phone, id FROM students WHERE name = 'Ammon';
SELECT Name, phone, id FROM students WHERE name = 'ammon';
UPDATE students SET phone = '(999)999-9999' WHERE id = 2;
SELECT * FROM students WHERE id = 2;
INSERT INTO students (name, phone, email)VALUES ('Yasmin', '(333)333-3333-3333', 'yasmin@GA.com');
SELECT * FROM students;
ALTER TABLE studentsALTER COLUMN phone VARCHAR(20);
ALTER TABLE studentsALTER COLUMN phone VARCHAR(20);
SELECT * FROM students;
DELETE FROM students WHERE name = 'Bob Jones';
DROP TABLE students;
\dt
CREATE DATABASE movie_lesson;
\l
\c movie_lesson
\i create_movie_table.sql 
\dt
\d movies
\i insert_movies.sql 
\q
\c movie_lesson 
\q
