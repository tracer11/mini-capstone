class ChangeItemDescription < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :description, :text
    change_column :items, :price, :decimal, precision: 8, scale: 2
    add_column :items, :stock, :boolean, default: true 
  end
end
