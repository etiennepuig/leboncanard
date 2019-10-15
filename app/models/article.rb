class Article < ApplicationRecord
  attr_accessor :min_price
  attr_accessor :max_price

  belongs_to :category
  mount_uploader :image, ImageUploader
end
