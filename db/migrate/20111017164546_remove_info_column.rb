class RemoveInfoColumn < ActiveRecord::Migration
  def up
    remove_column :assets, :info
  end

  def down
    add_column :assets, :info, :string
  end
end
