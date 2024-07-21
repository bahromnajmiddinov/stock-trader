from django.shortcuts import render


def stock_picker(request):
    return render(request, 'main/stockpicker.html')


def stock_tracker(request):
    return render(request, 'main/stocktracker.html')
