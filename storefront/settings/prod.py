import os
from .common import *



# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

SECRETE_KEY = os.environ['SECRETE_KEY']

ALLOWED_HOSTS = []