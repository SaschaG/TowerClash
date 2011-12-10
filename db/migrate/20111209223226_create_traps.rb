class CreateTraps < ActiveRecord::Migration
  def change
    create_table :traps do |t|
      t.integer :dmg
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
