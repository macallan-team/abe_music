class ChangeDataPriceToOrderItem < ActiveRecord::Migration[5.2]
  def change
  	change_column	:order_items, :count, :integer
  	change_column	:order_items, :price, :integer
  end
end
