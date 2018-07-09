class AddCategoryIdToPhones < ActiveRecord::Migration[5.2]
  def change
    add_column :phones, :category_id, :integer
    add_index :phones, :category_id
  end
end
