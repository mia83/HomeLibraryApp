from django.db import models

# Create your models here.

class books(models.Model):

    # Fields
    title = models.CharField(max_length=50)
    author = models.ForeignKey('authors', on_delete=models.SET_NULL, null=True)
    grade = models.ForeignKey('grades', on_delete=models.SET_NULL, null=True)
    genre = models.ForeignKey('genres', on_delete=models.SET_NULL, null=True)
    comment = models.CharField(max_length=255, blank=True)
    
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


class genres(models.Model):

    # Fields
    title = models.CharField(max_length=50)

    # Methods
    def __str__(self):
        return self.title
    

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