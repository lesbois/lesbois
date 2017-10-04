from __future__ import absolute_import, unicode_literals

from .base import *

DEBUG = True

SECRET_KEY = '%3uo8(y%kezw7lvch+srg!#lrdl%z$_!1l1j2_z=87cddevca5'

EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

# Specify development dependencies
INSTALLED_APPS += [
    'webpack_loader'
]

ALLOWED_HOSTS = [
    "127.0.0.1",
    "localhost",
    "lesbois.local"
]

WEBPACK_LOADER = {
    'DEFAULT': {
        'CACHE': not DEBUG,
        'BUNDLE_DIR_NAME': 'js/', # must end with slash
        'STATS_FILE': os.path.join(CLIENT_DIR, 'webpack-stats.json'),
        'POLL_INTERVAL': 0.1,
        'TIMEOUT': None,
        'IGNORE': ['.+\.hot-update.js', '.+\.map']
    }
}
