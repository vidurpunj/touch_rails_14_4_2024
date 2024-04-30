class Blog < ApplicationRecord
  mount_uploader :blog_image, BlogImageUploader
end
