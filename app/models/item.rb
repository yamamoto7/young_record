class Item < ApplicationRecord
	attachment :image, destroy: false
	has_many :cds

  has_many :items_genres
  accepts_nested_attributes_for :items_genres, allow_destroy: true
  has_many :genres, through: :items_genres

  has_many :history_items
  has_many :histories, through: :history_items

  has_many :carts
	accepts_nested_attributes_for :cds, allow_destroy: true
	# accepts_nested_attributes_for :songs, allow_destroy: true
  def self.search(search) #ここでのself.はItem.を意味する
    if search
      where(['name LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。Item.は省略
    else
      all #全て表示。Item.は省略
    end
  end
end
