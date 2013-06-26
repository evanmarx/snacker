class AddTrackbackUrl < ActiveRecord::Migration
  def change
  	add_column :snacks, :traceback_url, :string
  end
end
