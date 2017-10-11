from django.conf.urls import include, url

from .views import ContactView

urlpatterns = [
    url(r'^contact/$', ContactView.as_view()),
]
