class AddAddressPrefectureToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :address_prefecture, :string
  end
end
