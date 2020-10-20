class Product < ApplicationRecord
  mount_uploader :main_image, ImageUploader
  mount_uploader :additional_image_one, ImageUploader
  mount_uploader :additional_image_two, ImageUploader
  mount_uploader :additional_image_three, ImageUploader
end
