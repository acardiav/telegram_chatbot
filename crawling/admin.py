from django.contrib import admin

from .models import Post
from .models import Menu

class PostAdmin(admin.ModelAdmin):
    list_display = ['id', 'title', 'content']
    search_fields = ['content']
    pass

class MenuAdmin(admin.ModelAdmin):
    list_display = ['id', 'title', 'day']
    search_fields = ['title']
    pass

admin.site.register(Post, PostAdmin)
admin.site.register(Menu, MenuAdmin)