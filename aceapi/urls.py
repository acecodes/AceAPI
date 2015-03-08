from django.conf.urls import patterns, include, url
from django.contrib import admin
from rest_framework import routers
from restapi.views import AnimalViewSet, PersonViewSet
import aceapi.common

"""API views"""
router = routers.DefaultRouter()
router.register(r'animals', AnimalViewSet)
router.register(r'people', PersonViewSet)

urlpatterns = patterns('',
                       url(r'^', include(router.urls)),
                       url(r'^api-auth/',
                           include('rest_framework.urls',
                                   namespace='rest_framework')),
                       url(r'^admin/', include(admin.site.urls)),
                       )

urlpatterns += patterns('',
                        (r'^static/(?P<path>.*)$', 'django.views.static.serve',
                            {'document_root': aceapi.common.STATIC_ROOT}),
                        )
