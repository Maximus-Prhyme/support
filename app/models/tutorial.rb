class Tutorial < ActiveRecord::Base
  belongs_to :project
  has_attached_file :picture, styles: { large: "1200x1200", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images'
end
