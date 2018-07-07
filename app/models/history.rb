class History < ApplicationRecord
	has_many :history_items
	has_many :items, through: :history_items
	belongs_to :user

	scope :get_by_status, ->(status) { where(status: status)}
end
