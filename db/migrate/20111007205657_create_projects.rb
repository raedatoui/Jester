class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.string :description
      t.string :url
      
      t.timestamps
    end
  end
end
