from __future__ import absolute_import, unicode_literals

import json

from django.db import models
from django.utils.safestring import mark_safe

from modelcluster.fields import ParentalKey
from wagtail.wagtailcore.models import Page, Orderable
from wagtail.wagtailcore.fields import RichTextField
from wagtail.wagtailadmin.edit_handlers import FieldPanel, InlinePanel
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel


class HomePage(Page):
    def get_context(self, request):
        context = super(HomePage, self).get_context(request)
        children = list(self.get_children().specific())
        sections = []
        for index, child in enumerate(children):
            section = {
                "heading": child.heading,
                "sub_heading": child.sub_heading,
                "body": mark_safe(child.body),
                "gallery": []
            }
            for image in child.gallery_images.all():
                section["gallery"].append({
                    "title": image.title,
                    "caption": image.caption,
                    "url": image.image.file.url
                })
            sections.append(section)
        context['sections'] = json.dumps(sections)
        return context

class PageSection(Page):
    heading = models.CharField(max_length=250)
    sub_heading = models.CharField(max_length=250, blank=True)
    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('heading'),
        FieldPanel('sub_heading'),
        FieldPanel('body', classname="full"),
        InlinePanel('gallery_images', label="Gallery images"),
    ]


class PageGalleryImage(Orderable):
    page = ParentalKey(PageSection, related_name='gallery_images')
    image = models.ForeignKey(
        'wagtailimages.Image', on_delete=models.CASCADE, related_name='+'
    )
    title = models.CharField(blank=True, max_length=250)
    caption = RichTextField(blank=True)

    panels = [
        ImageChooserPanel('image'),
        FieldPanel('title'),
        FieldPanel('caption'),
    ]