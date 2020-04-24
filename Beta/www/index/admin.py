from django.contrib import admin
from .models import *

# Register your models here.

admin.site.site_title = '贝塔安全实验室|后台管理'
admin.site.site_header = '贝塔安全实验室'

admin.site.register(Label)
admin.site.register(Navigation)
admin.site.register(Script)
