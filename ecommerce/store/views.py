from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .models import *


def home(request):
    products = Product.objects.all()
    return render(request, 'home.html', {'products' : products})

def shop(request):
    category_list  = category.objects.filter(status=0)
    products = Product.objects.all()
    context = {
        'category': category_list,
        'products': products
    }
    return render(request, 'shop.html', context)


def about(request):
    return render(request, 'about.html')

def contact(request):
    return render(request, 'contact.html')


def checkout(request, product_title, products_image):
    product = Product.objects.get(product_title=product_title)
    
    return render(request, 'products/checkout.html', {
        'product': product,
        'product_image': products_image,
    })

def checkout(request, product_title=None):
    if not product_title:
        return render(request, 'shop.html', {'message': 'Product not found.'})
    
    product = Product.objects.get(product_title=product_title)
    return render(request, 'products/checkout.html', {'product': product})


def order_placed(request):
    return render(request, 'products/order_placed.html')


def productview(request, product_title):
    product = Product.objects.filter(product_title=product_title).first()
    if product:
        return render(request, 'products/view.html', {'product': product})
    else:
        messages.error(request, "Product not found.")
        return redirect('shop')
