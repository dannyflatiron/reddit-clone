class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :account
      t.references :community
      t.string :title
      t.text :body
      t.integer :upvotes
      t.integer :downvotes
      t.integer :total_comments
      t.timestamps
    end
  end
end
