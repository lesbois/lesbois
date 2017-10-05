from wagtail.wagtailcore import blocks
from wagtail.wagtailimages.blocks import ImageChooserBlock


class GalleryBlock(blocks.StructBlock):
    title = blocks.CharBlock(required=False)
    caption = blocks.RichTextBlock(required=False)
    image = ImageChooserBlock(required=False)

    class Meta:
        icon = 'image'


class StylingBlock(blocks.StructBlock):
    container_css = blocks.CharBlock(required=False, label="CSS")
    background_image = ImageChooserBlock(required=False)

    class Meta:
        icon = 'cog'
        label = 'Styling'


class PageSectionBlock(blocks.StructBlock):
    heading = blocks.CharBlock(required=False)
    sub_heading = blocks.CharBlock(required=False)
    body = blocks.RichTextBlock(required=False)
    styling = StylingBlock()
    gallery = blocks.ListBlock(GalleryBlock(), required=False)

    class Meta:
        label = 'Page Section'
