class RemoveAssetColumn < ActiveRecord::Migration
  def up
    remove_column :assets, :asset
  end

  def down
    add_column :assets, :asset, :string
  end
end
