from django.conf.urls import patterns, url

urlpatterns = patterns('restapi.views',
                       url(r'^$', 'index', name='index'),
                       )
