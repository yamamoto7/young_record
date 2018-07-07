class AddAddressCityToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :address_city, :string
  end
end
