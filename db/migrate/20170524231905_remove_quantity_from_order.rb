class RemoveQuantityFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :quantity, :integer
    remove_column :orders, :item_id, :integer
  end
end
