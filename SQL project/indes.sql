-- יצירת מסד נתונים
CREATE DATABASE library_db;

-- מעבר למסד הנתונים החדש
USE library_db;

-- יצירת טבלת אנשים
CREATE TABLE people (
    person_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    address VARCHAR(100)
);

-- יצירת טבלת ספרים
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    entry_date DATE
);

-- טבלת קשרים בין אנשים לספרים (אנשים שלקחו ספרים מסוימים)
CREATE TABLE people_books (
    person_id INT,
    book_id INT,
    FOREIGN KEY (person_id) REFERENCES people(person_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    PRIMARY KEY (person_id, book_id)
);

-- דוגמא להוספת נתונים בטבלת אנשים
INSERT INTO people (first_name, last_name, age, address) VALUES
('John', 'Doe', 30, '123 Main St'),
('Jane', 'Smith', 25, '456 Oak Ave');

-- דוגמא להוספת נתונים בטבלת ספרים
INSERT INTO books (title, entry_date) VALUES
('The Great Gatsby', '2024-01-01'),
('1984', '2024-02-01');

-- דוגמא להוספת קשרים בטבלת people_books
INSERT INTO people_books (person_id, book_id) VALUES
(1, 1), -- John Doe לקח את הספר "The Great Gatsby"
(2, 2); -- Jane Smith לקחה את הספר "1984"
