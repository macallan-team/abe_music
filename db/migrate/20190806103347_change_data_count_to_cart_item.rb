class ChangeDataCountToCartItem < ActiveRecord::Migration[5.2]
  def change
  	change_column	:cart_items, :count, :integer
  end
end
