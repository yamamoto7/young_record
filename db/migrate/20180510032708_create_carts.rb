class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
    	t.integer :user_id
    	t.integer :uitem_id
    	t.integer :count
      t.timestamps
    end
  end
end
