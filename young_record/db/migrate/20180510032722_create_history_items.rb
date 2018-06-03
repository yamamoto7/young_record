class CreateHistoryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :history_items do |t|
    	t.integer :history_id
    	t.integer :item_id
    	t.integer :cart_count
    	t.integer :cart_price

      t.timestamps
    end
  end
end
