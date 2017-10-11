from django.views.generic import TemplateView
from django.shortcuts import render

from rest_framework.views import APIView

class HomeView(APIView):
    def get(self, *args, **kwargs):
        return render(self.request, 'index.html')
