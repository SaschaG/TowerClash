class CreateBarracks < ActiveRecord::Migration
  def change
    create_table :barracks do |t|
      t.integer :rate
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
