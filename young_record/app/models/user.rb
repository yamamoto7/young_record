class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	validates :name_char, presence: true,
				 format: {
				  with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,
				  message: "漢字、カタカナ、ひらがなのみで入力して下さい"
				 }
	validates :name_kana, presence: true,
                 format: {
                   with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                   message: "全角カタカナのみで入力して下さい"
                 }
	validates :email, presence: true
	validates :tell, presence: true
	validates :post, presence: true
	# validates :address, presence: true
	validates :address_prefecture, presence: true
	validates :address_city, presence: true
	validates :address_building, presence: true

	validates :post, format: { with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}$|^\d{5}$|^\d{7}\z/ }
	validates :tell, format: { with: /\A\d{10}$|^\d{11}\z/ }

end
