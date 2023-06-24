-- Setup all 6 tables
CREATE DATABASE library;
USE library;

CREATE TABLE publishers(publisher_id INT auto_increment PRIMARY KEY, 
			 name VARCHAR(255) NOT NULL);

CREATE TABLE authors(author_id INT auto_increment PRIMARY KEY,
					 first_name VARCHAR(100) NOT NULL, 
					 middle_name VARCHAR(50), 
					 last_name VARCHAR(100) NOT NULL);

CREATE TABLE books(book_id INT auto_increment PRIMARY KEY, 
				   title VARCHAR(255) NOT NULL, 
				   total_pages INT, 
				   rating DECIMAL(4, 2), 
				   isbn VARCHAR(13) NULL, 
				   published_date DATE, 
				   publisher_id INT, 
				   FOREIGN KEY(publisher_id) REFERENCES publishers(publisher_id));

CREATE TABLE book_authors (book_id INT NOT NULL, 
						   author_id INT NOT NULL, 
						   FOREIGN KEY(book_id) REFERENCES books(book_id) ON DELETE CASCADE, 
						   FOREIGN KEY(author_id) REFERENCES authors(author_id) ON DELETE CASCADE);

CREATE TABLE genres (genre_id INT auto_increment PRIMARY KEY,
					 genre VARCHAR(255) NOT NULL, 
					 parent_id INT NULL, 
					 FOREIGN KEY(parent_id) REFERENCES genres(genre_id));

CREATE TABLE book_genres(book_id INT NOT NULL, 
						 genre_id INT NOT NULL, 
						 FOREIGN KEY(book_id) REFERENCES books(book_id) ON DELETE CASCADE, 
						 FOREIGN KEY(genre_id) REFERENCES genres(genre_id) ON DELETE CASCADE);


-- RUN data.sql FILE TO LOAD DATA
-- copyright data from wiki sql exercises


-- List all important info retrieved from 6 tables
-- Build a table that lists author, title, page number, genre, published date and publisher, isbn, and rating
SELECT CONCAT(last_name, ', ', first_name) AS Author, title AS Title, total_pages AS 'Total Pages',
			  genre AS Genre, IFNULL(isbn, 'N/A') AS ISBN, IFNULL(rating, 'N/A') AS Ratings,
              publishers.name AS Publishers, books.published_date AS 'Published on' FROM authors
	JOIN book_authors ON authors.author_id = book_authors.author_id
    JOIN books ON book_authors.book_id = books.book_id
    JOIN publishers ON books.publisher_id = publishers.publisher_id    
    JOIN book_genres ON book_genres.book_id = books.book_id   
    JOIN genres ON book_genres.genre_id = genres.genre_id
    ORDER BY Author;


-- List number of books per genre 
SELECT genre AS Genre, COUNT(*) AS 'Number of Books' FROM books b
	JOIN book_genres bg ON b.book_id = bg.book_id
    JOIN genres g ON bg.genre_id = g.genre_id
    GROUP BY Genre ORDER BY Genre;


-- Rank by most books written 
SELECT RANK() OVER (ORDER BY COUNT(*) DESC) AS 'Book Count Rank', 
	   CONCAT(last_name, ', ', first_name) AS Author, COUNT(*) 'Numbers of Books Written'
	FROM authors
	JOIN book_authors ON authors.author_id = book_authors.author_id
    JOIN books ON book_authors.book_id = books.book_id
    GROUP BY Author;


-- Which author wrote most books?
SELECT CONCAT(last_name, ', ', first_name) AS Author, COUNT(*) AS 'Number of Books Written' FROM authors
	JOIN book_authors ON authors.author_id = book_authors.author_id
    JOIN books ON book_authors.book_id = books.book_id
    GROUP BY Author ORDER BY COUNT(*) DESC LIMIT 1;


-- Calculate the average size of the books per each author
SELECT CONCAT(last_name, ', ', first_name) AS Author, ROUND(AVG(total_pages),0) AS 'Average Pages Written' 
	FROM authors
	JOIN book_authors ON authors.author_id = book_authors.author_id
    JOIN books ON book_authors.book_id = books.book_id
    GROUP BY Author ORDER BY Author;


-- Who is the best average rating author?
SELECT CONCAT(last_name, ', ', first_name) AS Author, ROUND(AVG(rating), 2) AS Ratings FROM authors
	JOIN book_authors ON authors.author_id = book_authors.author_id
    JOIN books ON book_authors.book_id = books.book_id
    GROUP BY Author ORDER BY Ratings DESC LIMIT 1;


-- Which book has the best rating?
SELECT title AS Title, rating AS Ratings FROM books
	ORDER BY Ratings DESC LIMIT 1;


-- List all book with words with words: math, graphics, programming, or data
SELECT CONCAT(last_name, ', ', first_name) AS Author, title AS Title, total_pages AS 'Total Pages',
			  genre AS Genre, IFNULL(isbn, 'N/A') AS ISBN, IFNULL(rating, 'N/A') AS Ratings,
              publishers.name AS Publishers, books.published_date AS 'Published on' FROM authors
	JOIN book_authors ON authors.author_id = book_authors.author_id
    JOIN books ON book_authors.book_id = books.book_id
    JOIN publishers ON books.publisher_id = publishers.publisher_id    
    JOIN book_genres ON book_genres.book_id = books.book_id   
    JOIN genres ON book_genres.genre_id = genres.genre_id
    WHERE LOWER(Title) LIKE '%math%' OR
		  LOWER(Title) LIKE '%programming%' OR
          LOWER(Title) LIKE '%data%' OR
          LOWER(Title) LIKE '%graphics%'
	ORDER BY Title; 


-- List all book published between year 2000-2005
SELECT * FROM books
	Where YEAR(published_date) BETWEEN 2000 AND 2005
    ORDER BY published_date;


-- Order Author by publish date
SELECT DISTINCT CONCAT(last_name, ', ', first_name) AS Author, published_date FROM authors a
	JOIN book_authors ba ON ba.author_id = a.author_id
    JOIN books b ON b.book_id = ba.book_id
    ORDER BY published_date DESC;



-- Which book in each genre has the best rating?
SELECT genre AS Genre,title AS Title, MAX(rating) AS Ratings FROM books
	JOIN book_genres ON books.book_id =book_genres.book_id
    JOIN genres ON book_genres.genre_id = genres.genre_id
    GROUP BY Genre, Title Order by Genre, Ratings DESC;


-- Procedure that will ask for ratings and list a set of books 
DELIMITER $$
CREATE PROCEDURE book_rating_list (IN rating_low_req INT, IN rating_high_req INT)
BEGIN
	SELECT title, rating FROM books
		WHERE rating BETWEEN rating_low_req AND rating_high_req
        ORDER BY rating;
END $$
DELIMITER ;
    
CALL book_rating_list (4, 5);
CALL book_rating_list (3, 4);
CALL book_rating_list (0, 3);


