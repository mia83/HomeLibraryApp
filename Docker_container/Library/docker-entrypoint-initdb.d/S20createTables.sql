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
    author_id bigint(20),
    grade_id bigint(20),
    genre_id bigint(20),
    comment varchar(255),
    CONSTRAINT FOREIGN KEY
        `list_books_author_id_fk_list_authors_id` (author_id) 
        REFERENCES `list_authors` (id)
        ON DELETE SET NULL,
    CONSTRAINT FOREIGN KEY
        `list_books_grade_id_fk_list_grades_id` (grade_id) 
        REFERENCES `list_grades` (id)
        ON DELETE SET NULL,
    CONSTRAINT FOREIGN KEY
        `list_books_genre_id_fk_list_genres_id` (genre_id) 
        REFERENCES `list_genres` (id)
        ON DELETE SET NULL);
