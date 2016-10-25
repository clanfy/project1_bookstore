DROP TABLE IF EXISTS stock;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;


CREATE TABLE authors (
  id serial4 PRIMARY KEY, 
  name VARCHAR(255)
);

CREATE TABLE books (
  id serial4 PRIMARY KEY,
  title VARCHAR(255),
  author_id int4 REFERENCES authors(id),
  buy_price FLOAT,
  sell_price FLOAT
);

CREATE TABLE stock (
  id serial4 PRIMARY KEY,
  book_id int4 REFERENCES books(id),
  author_id int4 REFERENCES authors(id),
  quantity INT2
);