from django.urls import path
from myapp.views import show_video

urlpatterns = [
    path('', show_video, name='show_video'),
] 
