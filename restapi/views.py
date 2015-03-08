from rest_framework import viewsets
from .serializers import AnimalSerializer, PersonSerializer
from .models import Animal, Person


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
