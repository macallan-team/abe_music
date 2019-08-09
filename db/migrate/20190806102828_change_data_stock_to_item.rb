class ChangeDataStockToItem < ActiveRecord::Migration[5.2]
  def change
  	change_column :items, :stock, :integer
  	change_column :items, :price, :integer
  	change_column :items, :image_id, :integer
  end
end
