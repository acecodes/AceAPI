from rest_framework import serializers

from .models import Animal, Person


class PersonSerializer(serializers.ModelSerializer):

    class Meta:
        model = Person
        fields = ('id', 'name', 'birthday', 'employed',)


class AnimalSerializer(serializers.ModelSerializer):

    class Meta:
        model = Animal
        fields = ('id', 'name', 'mammal',)
