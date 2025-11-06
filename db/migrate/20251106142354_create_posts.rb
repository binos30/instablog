class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :status, null: false

      t.timestamps
    end

    add_index :posts, :title, unique: true
    add_index :posts, :status
  end
end
