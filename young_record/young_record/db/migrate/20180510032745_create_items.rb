class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
    	t.integer :price
    	t.integer :count
    	t.integer :cd_number
    	t.string :name
    	t.string :artist_name
    	t.string :label_name
    	t.text :image_id
    	t.boolean :frag

      t.timestamps
    end
  end
end
