class Disc < ApplicationRecord
	has_many :songs
	accepts_nested_attributes_for :songs
	belongs_to :item
end
