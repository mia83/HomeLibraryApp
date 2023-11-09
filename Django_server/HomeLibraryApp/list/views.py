from django.shortcuts import render
from .forms import BookForm


def add_new_book(request):
    error = ''
    if request.method == 'POST':
        form = BookForm(request.POST)
        print(form.is_valid())
        if form.is_valid():
            form.save()
            print('saved')
        else:
            error = 'error'

    form = BookForm
    data = {
        'form': form,
        'error': error
    }
    return render(request, 'list/add_new_book.html', data)#{'information':inform})