class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :count
      t.string :artist_name
      t.text :image_id
      t.string :album_name
      t.string :label_name
      t.integer :genre_id
      t.boolean :show_flag, default: false, null: false
      t.timestamps
    end
  end
end
