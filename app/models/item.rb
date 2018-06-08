class Item < ApplicationRecord
	attachment :image, destroy: false
	has_many :cds
	accepts_nested_attributes_for :cds, allow_destroy: true
	# accepts_nested_attributes_for :songs, allow_destroy: true

end
