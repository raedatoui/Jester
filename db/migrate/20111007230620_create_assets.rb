class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.string :mimetype
      t.integer :size
      t.string :mimetype
      t.string :info

      t.timestamps
    end
  end
end
