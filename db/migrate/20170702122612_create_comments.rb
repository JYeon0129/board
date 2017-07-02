class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :profile_id
      t.text :contents
      t.belongs_to :comment, foreign_key: true, null: true
      t.timestamps null: false
    end
  end
end
