class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :example
      t.text :content
      t.integer :author_id

      t.timestamps
    end
  end
end