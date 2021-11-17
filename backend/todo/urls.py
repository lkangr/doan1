from django.conf.urls import url 
from todo import views 
 
urlpatterns = [ 
    url(r'^api/order$', views.OrderApi),
]