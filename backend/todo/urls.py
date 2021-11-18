from django.conf.urls import url 
from todo import views 
 
urlpatterns = [ 
    url(r'^api/order$', views.OrderApi),
    url(r'^api/order/(?P<id>[0-9]+)$', views.OrderApi),
]