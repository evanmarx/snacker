class RenameTypeForSnacks < ActiveRecord::Migration
  def change
  	rename_column :snacks, :type, :content_type
  end
end
