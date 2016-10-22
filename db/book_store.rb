-- DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;


CREATE TABLE authors (
  id serial4 PRIMARY KEY, 
  name VARCHAR(255)
);

CREATE TABLE books (
  id serial4 PRIMARY KEY,
  title VARCHAR(255),
  author_id int4 REFERENCES authors(id)
);

-- CREATE TABLE inventory (


-- );