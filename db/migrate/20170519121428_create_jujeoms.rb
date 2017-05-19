class CreateJujeoms < ActiveRecord::Migration
  def change
    create_table :jujeoms do |t|


      t.string :name
      t.string :day
      t.string :location
      t.string :host
      t.integer :like, :default => 0
      t.timestamps null: false
    end
  end
end
