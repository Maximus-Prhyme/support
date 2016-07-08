class Tutorial < ActiveRecord::Base
  belongs_to :project
  # has_attached_file :picture, styles:
  # validates_attachment_content_type :picture,
  #                                   :content_type => /^image\/(png|gif|jpeg)/,
  #                                   :message => 'only (png/gif/jpeg) images'

  mount_uploader :picture, PictureUploader, mount_on: :picture_file_name
end
