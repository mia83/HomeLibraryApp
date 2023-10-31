insert into library.genres (title)
    values 
        ('детектив'),
        ('приключения'),
        ('фантастика'),
        ('фэнтези');
insert into library.authors (last_name, first_name)
    values
        ('шойнеманн','фрауке'),
        ('вебб','холли'),
        ('милфорд', 'кейт'),
        ('линдгрен','астрид '),
        ('борисова','ариадна');
insert into library.grades
    values
        (1,NULL),
        (2,NULL),
        (3,NULL),
        (4,NULL),
        (5,NULL);
# -----
# Insert into library.books
# -----
insert into library.books (title, author_id, grade, genre_id, comment)
    select 'приключения кота-детектива', author_id, 5, genre_id, 'самая крутая книга в этой серии - уинстон берегись'
    from authors a, genres g
    where a.last_name='шойнеманн' and a.first_name = 'фрауке' and g.title='детектив';
insert into library.books (title, author_id, grade, genre_id, comment)
    select 'дом из зелёного стекла', author_id, 5, genre_id, 'невероятно захватывающая концовка'
    from authors a, genres g
    where a.last_name='милфорд' and a.first_name = 'кейт' and g.title='фэнтези';
insert into library.books (title, author_id, grade, genre_id, comment)
    select 'рони, дочь разбойника', author_id, 5, genre_id, 'по мотивам этой книги сняли мультсериал'
    from authors a, genres g
    where a.last_name='линдгрен' and a.first_name = 'астрид' and g.title='приключения';
insert into library.books (title, author_id, grade, genre_id, comment)
    select 'котёнок рози или острый нюх', author_id, 4, genre_id, 'начиная с середины книги становится интересно'
    from authors a, genres g
    where a.last_name='вебб' and a.first_name = 'холли' and g.title='приключения';
insert into library.books (title, author_id, grade, genre_id, comment)
    select 'записки для моих потомков', author_id, 5, genre_id, 'очень смешная книга'
    from authors a, genres g
    where a.last_name='борисова' and a.first_name = 'ариадна' and g.title='приключения';
insert into library.books (title, author_id, grade, genre_id, comment)
    select 'записки для моих потомков 2', author_id, 4, genre_id, 'первая часть понравилась больше'
    from authors a, genres g
    where a.last_name='борисова' and a.first_name = 'ариадна' and g.title='приключения';
