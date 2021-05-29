from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import Quiz
from .serializers import QuizSerializer
import random

# Create your views here.

@api_view(['GET'])
def randomQuiz(request, id):
    totalQuizzes = Quiz.objects.all()
    randomQuizzes = random.sample(list(totalQuizzes), id)
    serializer = QuizSerializer(randomQuizzes, many = True)
    return Response(serializer.data)