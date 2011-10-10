class AddAssetToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :asset, :string
  end
end
