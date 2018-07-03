class History < ApplicationRecord
	has_many :history_items
	has_many :items, through: :history_items
	belongs_to :user

	enum status: { 準備中: 0, 発送中: 1, 準備中: 2}
	scope :get_by_status, ->(status) { where(status: status)}
end
