class AddUsernameAndTokenToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :remember_token, :string
  end
end
