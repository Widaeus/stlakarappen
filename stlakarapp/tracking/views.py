from django.shortcuts import render
from .models import ExampleModel

def home(request):
    examples = ExampleModel.objects.all()
    return render(request, "home.html", {"examples": examples})
