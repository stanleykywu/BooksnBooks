CREATE DATABASE bookstore_db;

GRANT ALL PRIVILEGES ON bookstore_db.* TO 'webapp'@'%';

FLUSH PRIVILEGES;

USE bookstore_db;

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) UNIQUE NOT NULL CHECK (username <> ''),
    password VARCHAR(255) NOT NULL,
    dob DATE,
    -- constraints that there must be an @ in the email address
    email VARCHAR(255) NOT NULL CHECK (email LIKE '%_@_%'),
    -- constraints that the phone number must be all numbers
    phone CHAR(10) CHECK (phone not like '%[^0-9]%'),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

INSERT INTO
    Customer (
        username,
        password,
        dob,
        email,
        phone,
        first_name,
        last_name
    )
VALUES
    (
        'nitzig0',
        'kLHBVS2',
        '2000-01-27',
        'nitzig0@fotki.com',
        '9177345335',
        'Nolly',
        'Itzig'
    ),
    (
        'hshawe1',
        'FQqgActa25ls',
        '2010-07-13',
        'hshawe1@clickbank.net',
        '3881887883',
        'Hort',
        'Shawe'
    ),
    (
        'mmeardon2',
        '2A49mzau9q',
        '2004-10-09',
        'mmeardon2@blinklist.com',
        '3182327389',
        'Marlee',
        'Meardon'
    ),
    (
        'hwankel3',
        'dbwmyT',
        '2002-01-01',
        'hwankel3@hubpages.com', 
        NULL,
        'Hoyt',
        'Wankel'
    ),
    (
        'tgrossier4',
        'lH7RwvmEgxl',
        '2009-12-28',
        'tgrossier4@va.gov',
        '2543205684',
        'Theo',
        'Grossier'
    );

CREATE TABLE Author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) UNIQUE NOT NULL CHECK (username <> ''),
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

INSERT INTO
    Author (username, password, first_name, last_name)
VALUES
    (
        'ldunstall0',
        'xWk9BDGhO1HA',
        'Lonnie',
        'Dunstall'
    ),
    ('rbenger1', 'NL3d6Sb', 'Ransell', 'Benger');

CREATE TABLE Book (
    -- isbn must be 13 characters long and all numbers
    isbn CHAR(13) PRIMARY KEY CHECK (isbn NOT LIKE '%[^0-9]%'),
    author_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    -- price must be non-negative
    price FLOAT NOT NULL CHECK (price >= 0),
    CONSTRAINT book_fk_1
        FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

INSERT INTO
    Book (isbn, author_id, title, price)
VALUES
    (
        '0000486630994', 1, "Best Man, The (Testimone dello sposo, Il)", 14
    ), (
        '0006936200338', 1, "Dark Dungeons", 29
    ), (
        '0006605154746', 2, "Kids in the Hall: Brain Candy", 10
    ), (
        '0007652058975', 2, "They Call Him Bulldozer (Lo chiamavano Bulldozer)", 29
    ), (
        '0007100900018', 2, "Rebellion (L'ordre et la morale)", 16
    );

CREATE TABLE Library (
    library_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    username VARCHAR(20) UNIQUE NOT NULL CHECK (username <> ''),
    password VARCHAR(255) NOT NULL,
    town VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);

INSERT INTO
    Library (name, username, password, town, country)
VALUES
    ('San Jose Public Library', 'rmceneny0', 'Bts3DmMyN', 'San Jose', 'Mexico'),
    ('Karlstad Library', 'bspaule1', 'kbIK1aZ', 'Karlstad', 'Sweden'),
    ('Public Library of Barbosa', 'oenzley2', 'gOXPFb', 'Barbosa', 'Colombia');

CREATE TABLE Invoice (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    -- invoice total cannot be negative
    total FLOAT NOT NULL CHECK (total >= 0),
    customer_id INT NOT NULL,
    CONSTRAINT invoice_fk_1
        FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO
    Invoice (date, total, customer_id)
VALUES
    ('2022-03-23', 50.0, 1),
    ('2021-12-10', 20.0, 3);

CREATE TABLE InvoiceLine (
    invoice_line_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT NOT NULL,
    -- price per unit cannot be negative
    price_per_unit FLOAT NOT NULL CHECK (price_per_unit >= 0),
    quantity INT CHECK (quantity > 0),
    isbn CHAR(13) NOT NULL,
    CONSTRAINT invoice_line_fk_1
        FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id),
    CONSTRAINT invoice_line_fk_2
        FOREIGN KEY (isbn) REFERENCES Book(isbn)
);

INSERT INTO
    InvoiceLine (invoice_id, price_per_unit, quantity, isbn)
VALUES
    (1, 10, 5, '0007100900018'), 
    (2, 5, 4, '0006936200338');

CREATE TABLE BookReview (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    isbn CHAR(13) NOT NULL,
    review_content VARCHAR(255),
    -- enforce 0 to 5 star ratings (inclusive)
    review_stars decimal(2, 1) NOT NULL CHECK (
        review_stars >= 0
        AND review_stars <= 5
    ),
    CONSTRAINT bookreview_fk1
        FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT bookreview_fk2
        FOREIGN KEY (isbn) REFERENCES Book(isbn)
);

INSERT INTO
    BookReview (customer_id, isbn, review_content, review_stars)
VALUES
    (1, '0007100900018', 'loved this book!', 4.5), 
    (3, '0006936200338', NULL, 2.1);

CREATE TABLE BookInventory (
    library_id INT NOT NULL,
    isbn CHAR(13) NOT NULL,
    -- can't have negative books in inventory
    quantity INT CHECK (quantity > 0),
    CONSTRAINT bookinventory_fk1
        FOREIGN KEY (library_id) REFERENCES Library(library_id),
    CONSTRAINT bookinventory_fk2
        FOREIGN KEY (isbn) REFERENCES Book(isbn),
    PRIMARY KEY (library_id, isbn)
);

INSERT INTO
    BookInventory (library_id, isbn, quantity)
VALUES
    (1, '0007100900018', 100), 
    (2, '0006936200338', 5);

CREATE TABLE AuthorPartner (
    library_id INT NOT NULL,
    author_id INT NOT NULL,
    discount float CHECK (discount > 0 and discount < 1),
    CONSTRAINT authorpartner_fk1
        FOREIGN KEY (library_id) REFERENCES Library(library_id),
    CONSTRAINT authorpartner_fk2
        FOREIGN KEY (author_id) REFERENCES Author(author_id),
    PRIMARY KEY (library_id, author_id)
);
INSERT INTO
    AuthorPartner (library_id, author_id, discount)
VALUES
    (1, 2, 0.05), 
    (2, 1, 0.7);