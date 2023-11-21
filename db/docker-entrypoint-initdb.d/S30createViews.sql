CREATE VIEW IF NOT EXISTS books_list_title_order
  AS SELECT b.title as 'Название книги',
        concat(a.first_name,' ',a.last_name) as 'Автор',
        ge.title as 'Жанр',
        gr.grade as 'Оценка',
        b.comment as 'Комментарий'
  FROM list_books b
    LEFT JOIN list_authors a ON b.author_id = a.id  
    LEFT JOIN list_genres ge ON b.genre_id = ge.id
    LEFT JOIN list_grades gr ON b.grade_id = gr.id
  ORDER BY b.title;