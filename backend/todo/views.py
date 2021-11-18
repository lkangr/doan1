from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse

from .models import Category, Foods, Table, Staff, Reservation, Order, Food_Order
from .serializers import CategorySerializer, FoodsSerializer, TableSerializer, StaffSerializer, ReservationSerializer, OrderSerializer, Food_OrderSerializer

# Create your views here.

@csrf_exempt
def CategoryApi(request, id=0):
    pass

def FoodsApi(request, id=0):
    pass

def TableApi(request, id=0):
    pass

def StaffApi(request, id=0):
    pass

def ReservationApi(request, id=0):
    pass

def OrderApi(request, id=0):
    if request.method=='GET':
        if id == 0:
            order = Order.objects.all().order_by('-id')
            order_serializer = OrderSerializer(order, many=True)
            return JsonResponse(order_serializer.data, safe=False)
        else:
            order = Order.objects.get(id=id)
            order_serializer = OrderSerializer(order, many=False)
            return JsonResponse(order_serializer.data, safe=False)

def Food_OrderApi(request, id=0):
    pass

