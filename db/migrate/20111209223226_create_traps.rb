class CreateTraps < ActiveRecord::Migration
  def change
    create_table :traps do |t|
      t.integer :dmg

      t.timestamps
    end
  end
end
