class Item < ApplicationRecord
	attachment :image

	belongs_to :category
	belongs_to :label
	has_many :order_items
	has_many :reviews
	has_many :likes
	has_many :cart_items
	has_many :discs
	accepts_nested_attributes_for :discs
end
