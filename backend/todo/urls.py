from types import MethodType
from django.urls import re_path
from todo import views 
 
urlpatterns = [ 
    re_path(r'^api/order$', views.OrderApi),
    re_path(r'^api/order/(?P<id>[0-9]+)$', views.OrderApi),

    re_path(r'^api/food$', views.FoodApi),
    re_path(r'^api/food/(?P<id>[0-9]+)$', views.FoodApi),

    re_path(r'^api/table$', views.TableApi),
    re_path(r'^api/table/(?P<id>[0-9]+)$', views.TableApi),
    
    re_path(r'^api/reservation$', views.ReservationApi),
    re_path(r'^api/reservation/(?P<id>[0-9]+)$', views.ReservationApi),

    re_path(r'^api/staff$', views.StaffApi),
    re_path(r'^api/staff/(?P<id>[0-9]+)$', views.StaffApi),

    re_path(r'^api/food_order$', views.Food_OrderApi),
    re_path(r'^api/food_order/(?P<id>[0-9]+)$', views.Food_OrderApi),

    re_path(r'^api/category$', views.CategoryApi),
    re_path(r'^api/cazfdegory/(?P<id>[0-9]+)$', views.CategoryApi),
  
    re_path(r'^api/summary$', views.summaryApi),
    re_path(r'^api/graph$', views.graphApi),
  
    re_path(r'^api/order2$', views.OrderApi2),

    re_path(r'^auth$', views.CheckAuth),
]