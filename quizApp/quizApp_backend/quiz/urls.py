from django.urls import path, include
from .views import randomQuiz

urlpatterns = [
    path('<int:id>/', randomQuiz),
]
