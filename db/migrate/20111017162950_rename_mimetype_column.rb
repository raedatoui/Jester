class RenameMimetypeColumn < ActiveRecord::Migration
  def up
     rename_column :assets, :mimetype, :content_type
  end

  def down
    rename_column :assets, :content_type, :mimetype
  end
end
