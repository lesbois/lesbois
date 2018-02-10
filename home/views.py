from django.views.generic import TemplateView
from django.shortcuts import render

from rest_framework.views import APIView
from django.core.mail import EmailMessage
from rest_framework.renderers import JSONRenderer
from rest_framework.response import Response
from django.conf import settings


class ContactView(APIView):
    renderer_classes = (JSONRenderer,)

    def post(self, request):
        recepient = settings.CONTACT_EMAIL_RECEIVER
        message = request.data['message']
        sender = request.data['email']
        subject = "Sample subject here..."

        email = EmailMessage(
            subject,
            message,
            sender,
            [settings.CONTACT_EMAIL_RECEIVER]
        )
        email.send()

        return Response({
            'success': True
        })
