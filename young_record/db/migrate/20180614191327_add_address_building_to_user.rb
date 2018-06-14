class AddAddressBuildingToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :address_building, :string
  end
end
