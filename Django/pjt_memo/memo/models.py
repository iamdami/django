from django.db import models

class Memo(models.Model): 
    content = models.CharField(max_length=1000, blank=True, null=True)
