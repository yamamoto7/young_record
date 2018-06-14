class HistoryItem < ApplicationRecord
	belongs_to :item
	belongs_to :history
end
