class CreateAvatars < ActiveRecord::Migration[5.2]
def up
create_table :avatars do |t|
  		t.boolean :bravery
  		t.boolean :determination
  		t.boolean :power
  		t.boolean :funny
  		t.boolean :kind
  		t.string :user_id
  	end
  end
   def down
  	drop_table :avatars
  end
end