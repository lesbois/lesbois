from __future__ import absolute_import, unicode_literals

import json

from django.core.exceptions import ObjectDoesNotExist

from wagtail.wagtailcore.models import Page
from wagtail.wagtailcore.fields import StreamField
from wagtail.wagtailadmin.edit_handlers import StreamFieldPanel
from wagtail.wagtailimages.models import Image

from .blocks import PageSectionBlock


class HomePage(Page):
    pass


class PageSection(Page):
    template = 'home/home_page.html'

    body = StreamField([
        ('section', PageSectionBlock())
    ])

    def get_context(self, request):
        context = super(PageSection, self).get_context(request)
        page_dict = self.page_to_dict(context['page'])
        context['data_json'] = json.dumps(page_dict)
        return context

    content_panels = Page.content_panels + [
        StreamFieldPanel('body')
    ]

    def page_to_dict(self, page):
        body = page.__dict__['body']
        stream_data = body.__dict__['stream_data']

        tmp_data = []
        for (key, data) in enumerate(stream_data):
            if stream_data[key]['type'] == 'section':
                value = stream_data[key]['value']
                # Get gallery images URL
                value['gallery'] = self.transform_gallery(value['gallery'])
                if value['styling']['background_image'] is not None:
                    bgimage_pk = value['styling']['background_image']
                    value['styling']['background_image'] = self.get_image_url(bgimage_pk)
                tmp_data.append({i: val for (i, val) in value.items()})
        return tmp_data

    def get_image_url(self, image):
        return Image.objects.get(pk=image).file.url

    def transform_gallery(self, gallery):
        gal_arr = []
        for (index, image) in enumerate(gallery):
            try:
                gal_arr.append({
                    'title': image['title'],
                    'caption': image['caption'],
                    'image_url': self.get_image_url(image['image'])
                })
            except ObjectDoesNotExist:
                pass
        return gal_arr
