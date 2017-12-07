#!/usr/bin/env python
from __future__ import absolute_import, unicode_literals

import os
import sys
import environ
env = environ.Env()

if env('LOCAL'):
    env.read_env('.env')
else:
    env.read_env('.env.production')

if __name__ == "__main__":
    if env('LOCAL', default=True):
        os.environ.setdefault("DJANGO_SETTINGS_MODULE", "lesbois.settings.dev")
    else:
        os.environ.setdefault("DJANGO_SETTINGS_MODULE", "lesbois.settings.production")

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
