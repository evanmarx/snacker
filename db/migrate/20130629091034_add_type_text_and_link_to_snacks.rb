class AddTypeTextAndLinkToSnacks < ActiveRecord::Migration
  def change
  	add_column :snacks, :type, :string
  	add_column :snacks, :selected_text, :string
  end
end
