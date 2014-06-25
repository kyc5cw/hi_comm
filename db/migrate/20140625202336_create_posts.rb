class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :board, index: true
      t.string :title
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
