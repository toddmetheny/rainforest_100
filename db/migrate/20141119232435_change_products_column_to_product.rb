class ChangeProductsColumnToProduct < ActiveRecord::Migration
  def change
    rename_column :photos, :products_id, :product_id
  end
end
