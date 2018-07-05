class Cd < ApplicationRecord
	belongs_to :item
	has_many :songs
	accepts_nested_attributes_for :songs
end
