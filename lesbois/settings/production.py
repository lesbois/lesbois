from __future__ import absolute_import, unicode_literals

import environ

from .base import *

env = environ.Env()
env.read_env('.env.production')

DEBUG = env.bool('DEBUG', False)

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': env.str('DATABASE_NAME'),
        'USER': env.str('DATABASE_USER'),
        'PASSWORD': env.str('DATABASE_PASSWORD')
    }
}
