class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :date
      t.string :category
      t.text :explain
      t.text :content
      t.string :inputPassword

      t.timestamps null: false
    end
  end
end
