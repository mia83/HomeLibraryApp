from django.db import models
import environ

env = environ.Env(
    DB_MANAGED=(bool, True),
)
db_managed = env('DB_MANAGED')

# Create your models here.

class books(models.Model):

    # Fields
    title = models.CharField(max_length=50)
    author = models.ForeignKey('authors', on_delete=models.SET_NULL, null=True)
    grade = models.ForeignKey('grades', on_delete=models.SET_NULL, null=True)
    genre = models.ForeignKey('genres', on_delete=models.SET_NULL, null=True)
    comment = models.TextField(max_length=255, blank=True)
    readdate = models.DateField(auto_now_add=True)

    class Meta:    #как будет отображаться неполное и полное имя модели в админке
        verbose_name = 'book'
        verbose_name_plural = 'books'
        db_table = 'list_books'
        managed = db_managed
    
    # Methods
    def __str__(self):
        return self.title

    def display_genres(self):
        """
        Creates a string for the Genre. This is required to display several genres in Admin.
        """
        return ', '.join([ genre.title for genre in self.genres.all()[:3] ])
    display_genres.short_description = 'Жанр'


class authors(models.Model):
   
    # Fields
    last_name = models.CharField(max_length=50)
    first_name = models.CharField(max_length=50)

    # Methods
    def __str__(self):
        return '{0} {1}'.format (self.first_name, self.last_name)

    # Metadata
    class Meta:
        ordering = ["last_name"]
        verbose_name = 'author'
        verbose_name_plural = 'authors'
        db_table = 'list_authors'
        managed = db_managed


class genres(models.Model):

    # Fields
    title = models.CharField(max_length=50)

    # Methods
    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'genre'
        verbose_name_plural = 'genres'
        db_table = 'list_genres'
        managed = db_managed
    

class grades(models.Model):

    # Fields
    grade = models.CharField(max_length=1)
    #emoji = models.ImageField()
    '''
    To use ImageField we need to install Pillow. HINT: Get Pillow at https://pypi.org/project/Pillow/ or run command "python -m pip install Pillow"
    '''

    # Methods
    def __str__(self):
        return self.grade

    class Meta:
        verbose_name = 'grade'
        verbose_name_plural = 'grades'
        db_table = 'list_grades'
        managed = db_managed