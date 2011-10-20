class RenameNameColumn < ActiveRecord::Migration
  def up
     rename_column :assets, :name, :file
  end

  def down
    rename_column :assets, :file, :name
  end
end
