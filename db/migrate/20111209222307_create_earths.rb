class CreateEarths < ActiveRecord::Migration
  def change
    create_table :earths do |t|
      t.integer :dmg
      t.integer :rate
      t.integer :boni
      t.integer :gold
      t.integer :christals
      t.integer :stone
      t.integer :wood
      t.integer :iron
      t.integer :time

      t.timestamps
    end
  end
end
