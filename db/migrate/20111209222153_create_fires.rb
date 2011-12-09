class CreateFires < ActiveRecord::Migration
  def change
    create_table :fires do |t|
      t.integer :dmg
      t.integer :rate
      t.integer :boni

      t.timestamps
    end
  end
end
