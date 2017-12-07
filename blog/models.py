from django.db import models

from modelcluster.fields import ParentalKey

from wagtail.wagtailcore.models import Page, Orderable
from wagtail.wagtailcore import blocks
from wagtail.wagtailcore.fields import RichTextField, StreamField
from wagtail.wagtailadmin.edit_handlers import FieldPanel, InlinePanel
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel
from wagtail.wagtailsearch import index
from wagtail.wagtailimages.models import Image

class Blog(Page):
    intro = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('intro', classname='full')
    ]

    def get_context(self, request):
        context = super(Blog, self).get_context(request)
        blogpages = self.get_children().live().order_by('-first_published_at')
        context['latest_posts'] = blogpages[:3]
        context['posts'] = blogpages[3:]
        return context


class BlogPage(Page):
    cover = models.IntegerField(null=True, blank=True)
    date = models.DateField("Post date", null=True)
    intro = models.CharField(max_length=250, null=True)
    body = RichTextField(blank=True, null=True)
    # search_fields = Page.search_fields + [
    #     index.SearchField('intro'),
    #     index.SearchField('body'),
    # ]

    def get_context(self, request):
        context = super(BlogPage, self).get_context(request)
        if self.cover is not None:
            image_obj = Image.objects.get(pk=self.cover)
            context['cover_photo'] = image_obj.file.url
        return context

    content_panels = Page.content_panels + [
        FieldPanel('date'),
        FieldPanel('intro'),
        FieldPanel('body', classname="full"),
        ImageChooserPanel('cover'),
        InlinePanel('gallery_images', label="Gallery Images")
    ]


class BlogPageGalleryImage(Orderable):
    page = ParentalKey(BlogPage, related_name='gallery_images')
    image = models.ForeignKey(
        'wagtailimages.Image', on_delete=models.CASCADE, related_name='+'
    )
    caption = models.CharField(blank=True, max_length=250)

    panels = [
        ImageChooserPanel('image'),
        FieldPanel('caption'),
    ]
