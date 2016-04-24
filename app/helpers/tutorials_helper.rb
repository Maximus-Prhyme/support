module TutorialsHelper
#   def tutorial_for(pictures)
#     Tutorial.new(self, pictures).html
#   end

#   class Tutorial
#     def initialize(view, pictures)
#       @view, @pictures = view, pictures
#       @uid = SecureRandom.hex(6)
#     end

#     def html
#       content = safe_join([indicators, slides, controls])
#       content_tag(:div, content, id: uid, class: 'carousel slide')
#     end

#     private

#     attr_accessor :view, :pictures, :uid
#     delegate :link_to, :content_tag, :picture_tag, :safe_join, to: :view

#     def indicators
#       items = pictures.count.times.map { |index| indicator_tag(index) }
#       content_tag(:ol, safe_join(items), class: 'carousel-indicators')
#     end

#     def indicator_tag(index)
#       options = {
#         class: (index.zero? ? 'active' : ''),
#         data: {
#           target: uid,
#           slide_to: index
#         }
#       }

#       content_tag(:li, '', options)
#     end

#     def slides
#       items = pictures.map.with_index { |picture, index| slide_tag(picture, index.zero?) }
#       content_tag(:div, safe_join(items), class: 'carousel-inner')
#     end

#     def slide_tag(picture, is_active)
#       options = {
#         class: (is_active ? 'item active' : 'item'),
#       }

#       content_tag(:div, picture_tag(picture), options)
#     end

#     def controls
#       safe_join([control_tag('left'), control_tag('right')])
#     end

#     def control_tag(direction)
#       options = {
#         class: "#{direction} carousel-control",
#         data: { slide: direction == 'left' ? 'prev' : 'next' }
#       }

#       icon = content_tag(:i, '', class: "glyphicon glyphicon-chevron-#{direction}")
#       control = link_to(icon, "##{uid}", options)
#     end
#   end
end
