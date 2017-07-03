class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.text :contents
      t.timestamps null: false
    end
  end
end
