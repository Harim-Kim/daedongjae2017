class CreateJujeoms < ActiveRecord::Migration
  def change
    create_table :jujeoms do |t|
      t.string :img_name
      t.string :intro # 설명 
      t.string :unit
      t.string :name
      t.string :day
      t.string :location
      t.string :host
      t.integer :like, :default => 0
      t.timestamps null: false
    end
  end
end
