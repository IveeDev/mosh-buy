import os
from .common import *



# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

SECRETE_KEY = os.environ['SECRETE_KEY']

ALLOWED_HOSTS = ['eazy-buy-q4r8.onrender.com']


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': '',
        'USER': '',
        'PASSWORD': '',
        'HOST': '',
        'PORT': '3306',
    }
}