class AddCollectionIdToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :collection_id, :integer
  end
end
