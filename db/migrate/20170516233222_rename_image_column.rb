class RenameImageColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :product_id, :item_id
  end
end
