class Phone < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, :price, :description, presence: true
  validates :price, numericality: {greater_than: 0, allow_nil: true}

  belongs_to :category

end
