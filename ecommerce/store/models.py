from django.db import models
from django.utils import timezone
import datetime
from django.contrib.auth.models import User
import os

def get_file_path(request, filename):
    original_filename = filename
    nowtime = datetime.datetime.now().strftime("%d/%m/%Y, %H:%M:%S")
    filename = "%s%s" % (nowtime, original_filename)
    return os.path.join("uploads/", filename)

class category(models.Model):
    category_name = models.CharField(max_length=150, null=False, blank=False)
    image = models.ImageField(upload_to=get_file_path, null=True, blank=True)
    description = models.TextField(max_length=500, null=True, blank=True)
    status = models.BooleanField(default=True)
    trending = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.category_name

class Product(models.Model):
    category = models.ForeignKey(category, on_delete=models.CASCADE)
    product_title = models.CharField(max_length=150, unique=True, null=False, blank=False)
    products_image = models.ImageField(upload_to=get_file_path, null=False, blank=False)
    small_description = models.TextField(max_length=250, null=False, blank=False)
    quantity = models.IntegerField(null=False, blank=False)
    description = models.TextField(max_length=500, null=False, blank=False)
    regular_price = models.FloatField(null=False, blank=False)
    sale_price = models.FloatField(null=False, blank=False)
    status = models.BooleanField(default=False)
    tag = models.CharField(max_length=150, null=False, blank=False)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.product_title

    
class Order(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField()
    total_price = models.FloatField()
    customer_name = models.CharField(max_length=100)
    customer_address = models.TextField()
    customer_phone = models.CharField(max_length=15)
    order_date = models.DateTimeField(auto_now_add=True)
    status = models.CharField(
        max_length=20, 
        choices=[('Pending', 'Pending'), ('Delivered', 'Delivered'), ('Canceled', 'Canceled')],
        default='Pending'
    )

    def __str__(self):
        return f"Order #{self.id} - {self.product.product_title} for {self.customer_name}"

