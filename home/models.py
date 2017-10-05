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
        body = context['page'].__dict__['body']
        stream_data = body.__dict__['stream_data']

        tmp_data = []
        for (key, data) in enumerate(stream_data):

            if stream_data[key]['type'] == 'section':
                value = stream_data[key]['value']

                # Convert galleries image into URL
                gal_arr = []
                for (index, image) in enumerate(value['gallery']):
                    try:
                        image_obj = Image.objects.get(pk=image['image'])
                        gal_arr.append({
                            'title': image['title'],
                            'caption': image['caption'],
                            'image_url': image_obj.file.url
                        })
                    except ObjectDoesNotExist:
                        pass

                value['gallery'] = gal_arr

                if value['styling']['background_image'] is not None:
                    bgimage_pk = value['styling']['background_image']
                    bgimage_obj = Image.objects.get(pk=bgimage_pk)
                    value['styling']['background_image'] = bgimage_obj.file.url

                tmp_data.append({i: val for (i, val) in value.items()})

        context['data_json'] = json.dumps(tmp_data)
        return context

    content_panels = Page.content_panels + [
        StreamFieldPanel('body')
    ]
