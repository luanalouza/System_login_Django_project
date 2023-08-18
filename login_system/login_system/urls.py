from django.shortcuts import render
from django.contrib import admin
from django.urls import path, include
from App_system import views 

urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('allauth.urls')),
    path('contact/', views.contact, name='Contact-me'),
    path('about/', views.about, name='About-me'),
    path('', views.home , name='home'),
    path('accounts/profile/', views.profile, name='profile'),
]
