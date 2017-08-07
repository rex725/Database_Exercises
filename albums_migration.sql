USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name  VARCHAR(100) NOT NULL,
    release_date YEAR(4) NOT NULL,
    sales FLOAT,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);