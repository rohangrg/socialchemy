class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :value
      t.integer :parent_id
      t.string :parent_type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
