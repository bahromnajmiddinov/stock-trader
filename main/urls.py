from django.urls import path

from . import views


urlpatterns = [
    path('', views.stock_picker, name='stock-picker'),
    path('stocktracker', views.stock_tracker, name='stock-tracker'),
]

