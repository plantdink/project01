class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :username
      t.text :image

      t.timestamps
    end
  end
end
