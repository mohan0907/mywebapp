#rails gererate migration adddetailstoproducts part_number :string price :decimal
class AddDetailsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :part_number, :string
    add_column :products, :, :string
    add_column :products, :price, :string
    add_column :products, :, :decimal
  end
end
