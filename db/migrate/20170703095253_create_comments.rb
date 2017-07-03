class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :commentable_type, null: false
      t.integer :commentable_id, null: false
      t.text :contents
      t.timestamps null: false
    end
  end
end
