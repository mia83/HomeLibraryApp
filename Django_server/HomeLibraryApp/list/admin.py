from django.contrib import admin

# Register your models here.
from .models import books, genres, grades, authors

admin.site.register(books)
admin.site.register(genres)
admin.site.register(grades)
admin.site.register(authors)