class CreatePerformjungs < ActiveRecord::Migration
  def change
    create_table :performjungs do |t|
      t.string :start
      t.string :end
      t.string :name
      t.string :intro
      t.string :date
      t.string :img_url
      t.integer :like, :default => 0
      t.timestamps null: false
    end
  end
end
