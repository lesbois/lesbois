# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-12-11 07:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_auto_20171211_0716'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pagesection',
            name='heading',
            field=models.CharField(max_length=250, null=True),
        ),
        migrations.AlterField(
            model_name='pagesection',
            name='sub_heading',
            field=models.CharField(max_length=250, null=True),
        ),
    ]
