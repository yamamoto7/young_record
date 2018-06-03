class Item < ApplicationRecord
	has_many :cds
	accepts_nested_attributes_for :cds
end
