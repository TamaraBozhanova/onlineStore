class LineItem < ApplicationRecord
  belongs_to :phone
  belongs_to :cart

  def total_price
    phone.price.to_i*quantity.to_i
  end
end
