from django.shortcuts import render
from .forms import BookForm
from .models import books
from django.views.generic import TemplateView, ListView
from .models import books


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


def all_books(request):
    query = request.GET.get('q')
    object_list = books.objects.filter(name__icontains=query)
    list = {
        'all_objs': books.objects.all()
    }
    print(list)
    return render(request, 'list/list_of_books.html', list)


class SearchResultsView(ListView):
    model = books
    template_name = 'list_of_books.html'

    def get_queryset(self):
        query = self.request.GET.get('q')
        object_list = books.objects.filter(name__icontains=query)
#        return render(self.request, 'list/list_of_books.html', object_list)
        return object_list


class HomePageView(TemplateView):
    template_name = 'list_of_books.html'