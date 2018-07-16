class Phone < ApplicationRecord
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  mount_uploader :image, ImageUploader
  validates :name, :price, :description, presence: true
  validates :price, numericality: {greater_than: 0, allow_nil: true}

  belongs_to :category


  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end

end
