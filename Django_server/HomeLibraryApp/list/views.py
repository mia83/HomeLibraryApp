from django.shortcuts import render
from .forms import BookForm

def add_new_book(request):
    if request.method == 'POST':
        form = BookForm(request.POST)
        if form.is_valid():
            form.save()

    data = {
        'form': form
    }

    return render(request, 'list/add_new_book.html', data)
