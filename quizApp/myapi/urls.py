from django.urls import path, include
from django.contrib import admin

urlpatterns = [
    path('quiz/', include('quiz.urls')),
]