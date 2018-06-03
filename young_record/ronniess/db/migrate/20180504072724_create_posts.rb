class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :event_id
      t.date :post_date
      t.string :title

      t.timestamps
    end
  end
end
