CREATE DATABASE library;
USE library;

CREATE TABLE library.authors(
author_id INT PRIMARY KEY,
author_name VARCHAR(50) NOT NULL,
country VARCHAR(30)
);

CREATE TABLE library.Publishers (
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    publisher_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE library.Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50)
);

CREATE TABLE library.Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150),
    author_id INT,
    publisher_id INT,
    category_id INT,
    published_year YEAR,
    price DECIMAL(8,2),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE library.Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE library.Borrow_Records (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

SELECT b.title, a.author_name, p.publisher_name, c.category_name
FROM Books b
JOIN Authors a ON b.author_id = a.author_id
JOIN Publishers p ON b.publisher_id = p.publisher_id
JOIN Categories c ON b.category_id = c.category_id;

CREATE VIEW books_with_details AS
SELECT
b.title,
a.author_name,
p.publisher_name,
c.category_name,
b.published_year,
b.price
FROM books b
JOIN authors a ON b.author_id = a.author_id
JOIN publishers p ON b.publisher_id = p.publisher_id
JOIN categories c ON b.category_id = c.category_id;

SELECT * FROM books_with_details;

SELECT
title,
price
FROM books
ORDER BY price DESC
LIMIT 5;

CREATE VIEW top_5_expensive_books AS
SELECT
book_id,
title,
price
FROM books
ORDER BY price DESC 
LIMIT 5;

SELECT * FROM top_5_expensive_books;

SELECT c.category_name, COUNT(b.book_id) AS total_books
FROM books b
JOIN categories c ON b.category_id = c.category_id
GROUP BY c.category_name;

CREATE VIEW books_by_category AS
SELECT 
    c.category_name, 
    COUNT(b.book_id) AS total_books
FROM books b
JOIN categories c ON b.category_id = c.category_id
GROUP BY c.category_name;

SELECT * FROM books_by_category;

SELECT 
    category_id,
    ROUND(AVG(price), 2) AS avg_price
FROM books
GROUP BY category_id;

CREATE VIEW avg_price_by_category AS
SELECT 
    category_id,
    ROUND(AVG(price), 2) AS average_price,
    COUNT(book_id) AS total_books
FROM books
GROUP BY category_id
ORDER BY average_price DESC;

SELECT * FROM avg_price_by_category;




