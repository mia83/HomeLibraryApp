CREATE TABLE IF NOT EXISTS library.list_authors
    (id smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    last_name char(20) NOT NULL,
    first_name char(20) NOT NULL);
CREATE TABLE IF NOT EXISTS library.list_genres
    (id smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title char(20) NOT NULL);
CREATE TABLE IF NOT EXISTS library.list_grades
    (id tinyint NOT NULL AUTO_INCREMENT PRIMARY KEY,
    grade tinyint,
    emoji blob);
CREATE TABLE IF NOT EXISTS library.list_books
    (id smallint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title char(50) NOT NULL,
    author_id smallint unsigned NOT NULL,
    grade_id tinyint,
    genre_id smallint unsigned,
    comment char(255));
