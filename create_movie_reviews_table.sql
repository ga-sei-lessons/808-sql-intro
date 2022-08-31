-- creates a table that has a reference to movies
CREATE TABLE movies_reviews (
    id SERIAL PRIMARY KEY,
    description TEXT,
    reviewer TEXT,
    score INT,
    -- embed a reference to a movie's id in the review
    movie_id INT REFERENCES movies(id)
)