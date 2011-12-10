class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.integer :speed
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
