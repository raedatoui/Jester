class AddProjectidToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :project_id, :integer
  end
end
