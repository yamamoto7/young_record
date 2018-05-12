class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
    	t.integer :cd_id
    	t.string :time
    	t.string :name
    	t.string :artist_name

      t.timestamps
    end
  end
end
