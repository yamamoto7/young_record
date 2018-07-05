class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
		t.integer :user_id
    	t.integer :status
    	t.integer :sum
    	t.text :user_address
    	t.string :user_post
      t.timestamps
    end
  end
end
