"""pjt_memo URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from django.conf.urls import url, include
from django.contrib import admin

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^admin/', admin.site.urls),
    # memo 문자열로 시작하는 url 요청이 오면 memo.urls 파일에 있는 url 로 매핑
    url(r'^memo/', include('memo.urls', namespace='memo')),
]
