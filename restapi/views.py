from rest_framework import viewsets
from .serializers import AnimalSerializer, PersonSerializer
from .models import Animal, Person
from django.shortcuts import render_to_response
from django.template import RequestContext
from aceapi.common import SITE_TAGLINE, SITE_TITLE, SITE_ANALYTICS


def index(request):
    context = RequestContext(request)
    context_dict = {
                    'site_title': SITE_TITLE,
                    'site_tagline': SITE_TAGLINE,
                    'site_analytics': SITE_ANALYTICS
                    }
    return render_to_response('index.html', context_dict, context)


class PersonViewSet(viewsets.ModelViewSet):
    """
    API endpoint for people
    """
    queryset = Person.objects.all()
    serializer_class = PersonSerializer


class AnimalViewSet(viewsets.ModelViewSet):
    """
    API endpoint for animals
    """
    queryset = Animal.objects.all()
    serializer_class = AnimalSerializer
