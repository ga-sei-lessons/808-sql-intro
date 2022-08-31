-- when creating a movie review, supply a integer to the movie_id col
-- tell the review what movie it is on
-- INSERT INTO movies_reviews (description, reviewer, score, movie_id)
-- VALUES ('awesome movie!', 'Me, Weston!', 10, 5);

-- using nested queries to populate relationships

-- INSERT INTO movies_reviews (description, reviewer, score, movie_id)
-- -- nested querie on the movie_id col
-- VALUES ('love this movie', 'Me, Weston!', 10, (
--         SELECT id FROM movies WHERE title = 'Jurassic Park'
--     )
-- );

INSERT INTO movies_reviews (description, reviewer, score, movie_id)
-- nested querie on the movie_id col
VALUES ('what isn''t there to love about time travel', 'Me, Weston!', 10, (
        SELECT id FROM movies WHERE title LIKE 'Back%'
    )
);

-- SQL joins overlap the relational data from two (or more) tables
SELECT * FROM movies
JOIN movies_reviews ON movies.id = movies_reviews.movie_id;



-- select specific cols from each table
-- SELECT movies.title, movies.description, movies_reviews.reviewer, movies_reviews.score, movies.id FROM movies
-- JOIN movies_reviews ON movies.id = movies_reviews.movie_id;