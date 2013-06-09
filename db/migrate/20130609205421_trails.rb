class Trails < ActiveRecord::Migration
  def change
  	create_table :trails do |t|
  		t.string :query
  		t.integer :user_id

  		t.timestamps
  	end

  	add_index :trails, :user_id
  end
end
