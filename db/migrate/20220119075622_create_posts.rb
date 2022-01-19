class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :author, null: false, foreign_key: true
      t.string :title
      t.text :text
      t.integer :commentsCounter
      t.integer :likesCounter
      t.integer :postsCounter

      t.timestamps
    end
  end
end
