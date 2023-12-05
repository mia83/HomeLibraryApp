from .models import books
from django.forms import ModelForm, TextInput, Textarea

class BookForm(ModelForm):
    class Meta:
        model = books
        fields = ['title', 'author', 'genre', 'grade', 'comment']

        widgets = {
            'title': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'название книги'
            }),
            'author': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'автор'
            }),
            'genre': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'жанр'
            }),
            'grade': TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'оценка (число)'
            }),
            'comment': Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'комментарий'
            })
        }