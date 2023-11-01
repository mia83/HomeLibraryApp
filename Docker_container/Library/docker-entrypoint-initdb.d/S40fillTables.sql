insert into library.list_genres (title)
    values 
        ('детектив'),
        ('приключения'),
        ('фантастика'),
        ('фэнтези');
insert into library.list_authors (last_name, first_name)
    values
        ('шойнеманн','фрауке'),
        ('вебб','холли'),
        ('милфорд', 'кейт'),
        ('линдгрен','астрид '),
        ('борисова','ариадна');
insert into library.list_grades (grade, emoji)
    values
        (1,NULL),
        (2,NULL),
        (3,NULL),
        (4,NULL),
        (5,NULL);
# -----
# Insert into library.list_books
# -----
insert into library.list_books (title, author_id, grade_id, genre_id, comment)
    select 'приключения кота-детектива', a.id, gr.id, ge.id, 'самая крутая книга в этой серии - уинстон берегись'
    from list_authors a, list_genres ge, list_grades gr
    where a.last_name='шойнеманн' and a.first_name='фрауке' and ge.title='детектив' and gr.grade=5;
insert into library.list_books (title, author_id, grade_id, genre_id, comment)
    select 'дом из зелёного стекла', a.id, gr.id, ge.id, 'невероятно захватывающая концовка'
    from list_authors a, list_genres ge, list_grades gr
    where a.last_name='милфорд' and a.first_name = 'кейт' and ge.title='фэнтези' and gr.grade=5;
insert into library.list_books (title, author_id, grade_id, genre_id, comment)
    select 'рони, дочь разбойника', a.id, gr.id, ge.id, 'по мотивам этой книги сняли мультсериал'
    from list_authors a, list_genres ge, list_grades gr
    where a.last_name='линдгрен' and a.first_name = 'астрид' and ge.title='приключения' and gr.grade=5;
insert into library.list_books (title, author_id, grade_id, genre_id, comment)
    select 'котёнок рози или острый нюх', a.id, gr.id, ge.id, 'начиная с середины книги становится интересно'
    from list_authors a, list_genres ge, list_grades gr
    where a.last_name='вебб' and a.first_name = 'холли' and ge.title='приключения' and gr.grade=4;
insert into library.list_books (title, author_id, grade_id, genre_id, comment)
    select 'записки для моих потомков', a.id, gr.id, ge.id, 'очень смешная книга'
    from list_authors a, list_genres ge, list_grades gr
    where a.last_name='борисова' and a.first_name = 'ариадна' and ge.title='приключения' and gr.grade=5;
insert into library.list_books (title, author_id, grade_id, genre_id, comment)
    select 'записки для моих потомков 2', a.id, gr.id, ge.id, 'первая часть понравилась больше'
    from list_authors a, list_genres ge, list_grades gr
    where a.last_name='борисова' and a.first_name = 'ариадна' and ge.title='приключения' and gr.grade=4;
