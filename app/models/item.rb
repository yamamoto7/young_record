class Item < ApplicationRecord
	has_many :cds
	accepts_nested_attributes_for :cds, allow_destroy: true
	attachment :profile_image, destroy: false

end
