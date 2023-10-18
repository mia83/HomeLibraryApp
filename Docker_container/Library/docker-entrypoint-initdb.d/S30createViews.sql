CREATE VIEW IF NOT EXISTS books_list_historical_order
  AS SELECT b.title as 'Название книги',
        concat(a.first_name,' ',a.last_name) as 'Автор',
        g.title as 'Жанр',
        b.read_date as 'Дата прочтения',
        b.grade as 'Оценка',
        b.comment as 'Комментарий'
  FROM books b
    LEFT JOIN authors a ON b.author_id = a.author_id  
    LEFT JOIN genres g ON b.genre_id = g.genre_id
  ORDER BY b.read_date;