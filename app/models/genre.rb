class Genre < ApplicationRecord
	has_many :items_genres
	has_many :items, through: :items_genres

	validates :name, presence: true
end
