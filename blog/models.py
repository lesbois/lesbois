from django.db import models

from wagtail.wagtailcore.models import Page
from wagtail.wagtailcore import blocks
from wagtail.wagtailcore.fields import RichTextField
from wagtail.wagtailadmin.edit_handlers import FieldPanel
from wagtail.wagtailsearch import index


class Blog(Page):
    intro = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('intro', classname='full')
    ]


class BlogPage(Page):
    date = models.DateField("Post date", null=True)
    intro = models.CharField(max_length=250, null=True)
    body = RichTextField(blank=True, null=True)

    # search_fields = Page.search_fields + [
    #     index.SearchField('intro'),
    #     index.SearchField('body'),
    # ]

    content_panels = Page.content_panels + [
        FieldPanel('date'),
        FieldPanel('intro'),
        FieldPanel('body', classname="full"),
    ]
