class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.string :url
      t.integer :likes
      t.integer :shares
      t.integer :comments

      t.timestamps
    end
  end
end
