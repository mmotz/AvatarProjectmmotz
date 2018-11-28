class CreateStories < ActiveRecord::Migration[5.2]
  def up
  	create_table :stories do |t|
  		t.string :user_id
  		t.string :message
  		t.string :avatar_id
  		t.timestamps
  	end
  end
   def down
  	drop_table :stories
  end
end
