from django.http import HttpResponse



def welcome(request):
    return HttpResponse("<h1>Welcome to AWS Lightsail</h1>")
