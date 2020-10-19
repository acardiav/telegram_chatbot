from django.db import models

class Post(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()

    def __str__(self):
        return str([self.title, self.content])

    class Meta:
        db_table = 'test'
        managed = False

class Menu(models.Model):
    title = models.CharField(max_length=100)
    day = models.TextField()

    def __str__(self):
        return str([self.title, self.day])

    class Meta:
        db_table = 'menu'
        managed = False
