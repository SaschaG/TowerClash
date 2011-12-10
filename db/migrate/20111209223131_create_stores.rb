class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :volume
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
