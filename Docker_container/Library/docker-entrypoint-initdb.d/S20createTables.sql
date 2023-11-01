CREATE TABLE IF NOT EXISTS library.list_authors
    (id bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    last_name varchar(50) NOT NULL,
    first_name varchar(50) NOT NULL);
CREATE TABLE IF NOT EXISTS library.list_genres
    (id bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title varchar(50) NOT NULL);
CREATE TABLE IF NOT EXISTS library.list_grades
    (id bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    grade varchar(1) NOT NULL,
    emoji blob);
CREATE TABLE IF NOT EXISTS library.list_books
    (id bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title varchar(50) NOT NULL,
    author_id bigint(20) NOT NULL,
    grade_id bigint(20),
    genre_id bigint(20),
    comment varchar(255));
