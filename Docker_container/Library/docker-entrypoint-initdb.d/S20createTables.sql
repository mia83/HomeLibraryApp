CREATE TABLE IF NOT EXISTS library.authors
    (author_id smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    last_name char(20) NOT NULL,
    first_name char(20) NOT NULL);
CREATE TABLE IF NOT EXISTS library.genres
    (genre_id smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title char(20) NOT NULL);
CREATE TABLE IF NOT EXISTS library.books
    (book_id smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title char(50) NOT NULL,
    author_id smallint unsigned NOT NULL,
    publication_year year(4),
    grade tinyint,
    genre_id smallint unsigned,
    read_date date,
    comment char(255));
