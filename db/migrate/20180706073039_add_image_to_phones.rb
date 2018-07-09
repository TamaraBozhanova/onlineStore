class AddImageToPhones < ActiveRecord::Migration[5.2]
  def change
    add_column :phones, :image, :string
  end
end
