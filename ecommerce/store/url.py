from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('shop/', views.shop, name='shop'),
    path('about/', views.about, name='about'),
    path('order_placed/', views.order_placed, name='order_placed'),
    path('products/<str:product_title>', views.productview, name="productview"),
    path('checkout/<str:product_title>/', views.checkout, name='checkout'),
    path('contact/', views.contact, name='contact'),
]