class CreateJujeomreplies < ActiveRecord::Migration
  def change
    create_table :jujeomreplies do |t|
      t.text :content
      t.string :nickname
      t.integer :jujeom_id
      
      t.timestamps null: false
    end
  end
end
