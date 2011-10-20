class RemoveUrl < ActiveRecord::Migration
  def up
    remove_column :assets, :url
  end

  def down
    add_column :assets, :url, :string
  end
end
