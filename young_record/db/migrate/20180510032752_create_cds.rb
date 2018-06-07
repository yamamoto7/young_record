class CreateCds < ActiveRecord::Migration[5.1]
  def change
    create_table :cds do |t|
    	t.integer :song_number
    	t.integer :item_id
    	t.string :name

      t.timestamps
    end
  end
end
