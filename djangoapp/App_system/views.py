from django.shortcuts import render

def contact(request): 

    return render(request, 'user/contact.html')

def index(request): 

    return render(request, 'user/index.html')
def about(request): 

    return render(request, 'user/about.html')
def profile(request): 

    return render(request, 'user/profile.html')
