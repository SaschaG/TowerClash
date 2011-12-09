class CreateAirs < ActiveRecord::Migration
  def change
    create_table :airs do |t|
      t.integer :dmg
      t.integer :rate
      t.integer :boni

      t.timestamps
    end
  end
end
