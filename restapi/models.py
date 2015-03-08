from django.db import models


class Person(models.Model):
    name = models.CharField(max_length=100)
    birthday = models.DateField()
    employed = models.BooleanField(default=False)

    def __str__(self):
        return self.name


class Animal(models.Model):
    name = models.CharField(max_length=100)
    mammal = models.BooleanField(default=True)

    def __str__(self):
        return self.name
