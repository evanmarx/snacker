class Snacks < ActiveRecord::Migration
  def change
  	create_table :snacks do |t|
  		t.string :source_url
  		t.integer :trail_id

  		t.timestamps
  	end

  	add_index :snacks, :trail_id
  end
end
