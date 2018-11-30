class CreateUsers < ActiveRecord::Migration[5.2]
 def up
  	create_table :users do |t|
  		t.string :first
  		t.string :last
  		t.string :screenname
  		t.string :email
  		t.string :password
  		t.string :social_security
  		t.string :avatar_id
  	end
  end
   def down
  	drop_table :users
  end
end